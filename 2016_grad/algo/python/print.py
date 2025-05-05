# Write the coordinate grid to a text file neatly
output_path = "./algo/python/coordinate.txt"

with open(output_path, "w") as file:
    for i in range(128):
        row = []
        for j in range(128):
            row.append(f"({i:3},{j:3})")  # Align numbers for neat formatting
        file.write(" ".join(row) + "\n")

output_path
