#include <fstream>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <string>
#include <vector>

using namespace std;

constexpr int WIDTH = 128;
constexpr int HEIGHT = 128;
constexpr int TOTAL_PIXELS = WIDTH * HEIGHT;

using Image = vector<int>;

const int offsets[8][2] = {
    {-1, -1}, {-1, 0}, {-1, 1}, {0, -1}, {0, 1}, {1, -1}, {1, 0}, {1, 1}};

void compare_with_golden(const Image& lbp_mem, const Image& golden, const string& output_file) {
    ofstream out(output_file);
    if (!out) {
        cerr << "❌ Failed to open '" << output_file << "' for writing.\n";
        return;
    }

    int match = 0, mismatch = 0;
    for (int i = 0; i < TOTAL_PIXELS; ++i) {
        if (lbp_mem[i] == golden[i]) {
            match++;
        } else {
            mismatch++;
            out << "Mismatch at index " << i
                << ": expected 0x" << hex << uppercase << golden[i]
                << ", got 0x" << lbp_mem[i] << "\n";
        }
    }

    out << dec << "\nComparison Result:\n";
    out << "  Matched   : " << match << "\n";
    out << "  Mismatched: " << mismatch << "\n";
    out.close();
}

bool read_hex_file(const string& filename, Image& data) {
    ifstream file(filename);
    if (!file) return false;

    data.reserve(TOTAL_PIXELS);
    string line, token;

    while (getline(file, line) && data.size() < TOTAL_PIXELS) {
        istringstream iss(line);
        if (iss >> token) {
            try {
                data.push_back(stoi(token, nullptr, 16));
            } catch (...) {
                return false;
            }
        }
    }
    return data.size() == TOTAL_PIXELS;
}

int compute_lbp_pixel(const Image& gray_mem, int i, int j) {
    /*
    calulate LBP value for pixel at (i, j), and (i,j) is the center pixel.
    */
    int center = gray_mem[i * WIDTH + j];
    int lbp = 0;
    for (int p = 0; p < 8; ++p) {
        /*
        p = 0: {-1, -1} => ni = i - 1, nj = j - 1
        p = 1: {-1, 0}  => ni = i - 1, nj = j
        ...
        p = 7: {1, 1}   => ni = i + 1, nj = j + 1
        */
        int ni = i + offsets[p][0];
        int nj = j + offsets[p][1];
        int neighbor = gray_mem[ni * WIDTH + nj];
        if (neighbor >= center)
            lbp += (1 << p);
    }
    return lbp;
}

void compute_lbp_image(const Image& gray_mem, Image& lbp_mem) {
    // outer border pixels are not processed
    lbp_mem.assign(TOTAL_PIXELS, 0);

    /*
    grey_mem: 128 * 128
    grey_mem[0][0] grey_mem[0][1] ... grey_mem[0][127]
    grey_mem[1][0] grey_mem[1][1] ... grey_mem[1][127]
    ...
    grey_mem[127][0] grey_mem[127][1] ... grey_mem[127][127]

    i is row index, j is column index
    */

    for (int i = 1; i < HEIGHT - 1; ++i) {
        for (int j = 1; j < WIDTH - 1; ++j) {
            lbp_mem[i * WIDTH + j] = compute_lbp_pixel(gray_mem, i, j);
        }
    }
}

int main() {
    Image gray_mem, lbp_mem, golden_mem;

    if (!read_hex_file("pattern1.dat", gray_mem)) {
        cerr << "❌ Failed to read or parse 'pattern1.dat'.\n";
        return 1;
    }

    if (!read_hex_file("golden1.dat", golden_mem)) {
        cerr << "❌ Failed to read or parse 'golden.dat'.\n";
        return 1;
    }

    // ============ Debugging ============
    // cout << "size of gray_mem: " << gray_mem.size() << endl;

    // for (int i = 0; i < 10; i++) {
    //     for (int j = 0; j < 10; j++) {
    //         cout << "gray_mem[" << i << "][" << j << "]: " << gray_mem[i * WIDTH + j] << endl;
    //     }
    // }

    
    compute_lbp_image(gray_mem, lbp_mem);
    compare_with_golden(lbp_mem, golden_mem, "output.dat");

    return 0;
}
