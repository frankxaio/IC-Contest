# Write the sum ranges for internal coordinates to a text file
output_path = "./ctr_move.txt"

with open(output_path, "w") as file:
    # Loop through internal grid (excluding the outermost border)
    for i in range(1, 127):
        row_sums = []
        for j in range(1, 127):
            coord_sum = i + j
            row_sums.append(coord_sum)

        min_sum = min(row_sums)
        max_sum = max(row_sums)
        file.write(f"Row {i:3} -> Sum range: {min_sum:3} to {max_sum:3}\n")

print(f"Written to {output_path}")
