def print_outer_addresses(num_rows=128, num_cols=128):
    with open("./outter_addr.txt", "w") as f:
        # Top row (row = 0)
        for col in range(num_cols):
            address = 0 * num_cols + col
            f.write(f"(0,{col}) -> {address}\n")

        # Right column (col = num_cols - 1), excluding top and bottom corners
        for row in range(1, num_rows - 1):
            address = row * num_cols + (num_cols - 1)
            f.write(f"({row},{num_cols - 1}) -> {address}\n")

        # Bottom row (row = num_rows - 1), reversed to match left-to-right direction
        for col in range(num_cols - 1, -1, -1):
            address = (num_rows - 1) * num_cols + col
            f.write(f"({num_rows - 1},{col}) -> {address}\n")

        # Left column (col = 0), excluding top and bottom corners
        for row in range(num_rows - 2, 0, -1):
            address = row * num_cols + 0
            f.write(f"({row},0) -> {address}\n")

if __name__ == "__main__":
    print_outer_addresses()
