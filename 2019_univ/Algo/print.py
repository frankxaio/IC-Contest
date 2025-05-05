# Configuration variables

coordinate_file_path = "./coordinate.txt"
address_file_path = "./addr.txt"
coordinate_address_file_path = "./coordinate_addr.txt"


def write_coordinate_grid(rows, cols, output_path):
    with open(output_path, "w") as file:
        for i in range(rows):
            row = []
            for j in range(cols):
                row.append(f"({i:3},{j:3})")  # Align numbers for neat formatting
            file.write(" ".join(row) + "\n")


def print_addresses(rows, cols, output_path):
    with open(output_path, "w") as f:
        for row in range(rows):
            for col in range(cols):
                address = row * cols + col
                f.write(f"({row},{col}) -> {address}\n")


def write_coordinate_addresses(rows, cols, output_path):
    with open(output_path, "w") as file:
        for i in range(rows):
            row = []
            for j in range(cols):
                row.append(f"{i*cols+j:>4}")  # Align numbers for neat formatting
            file.write(" ".join(row) + "\n")


if __name__ == "__main__":
    coord_rows = 64
    coord_cols = 64
    write_coordinate_grid(coord_rows, coord_cols, coordinate_file_path)
    print_addresses(coord_rows, coord_cols, address_file_path)
    write_coordinate_addresses(coord_rows, coord_cols, coordinate_address_file_path)
