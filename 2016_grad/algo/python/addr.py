def print_addresses(num_rows=128, num_cols=128):
    with open("./addr.txt", "w") as f:
        for row in range(num_rows):
            for col in range(num_cols):
                address = row * num_cols + col
                f.write(f"({row},{col}) -> {address}\n")

if __name__ == "__main__":
    print_addresses()
