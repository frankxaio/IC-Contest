#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Cross Product Calculator for Geofence Points
Calculate cross product values between vectors

Points data:
- Point 0: (300, 800) - Base point
- Point 1: (400, 80)  - Index 1
- Point 2: (710, 620) - Index 2  
- Point 3: (130, 210) - Index 3
- Point 4: (980, 120) - Index 4
- Point 5: (103, 500) - Index 5

Vectors:
- A = 01 (from point 0 to point 1)
- B = 02 (from point 0 to point 2)  
- C = 03 (from point 0 to point 3)
- D = 04 (from point 0 to point 4)
- E = 05 (from point 0 to point 5)
"""

import numpy as np
import math

def cross_product_2d(v1, v2):
    """
    Calculate 2D vector cross product
    For 2D vectors (x1,y1) and (x2,y2), cross product = x1*y2 - y1*x2
    """
    return v1[0] * v2[1] - v1[1] * v2[0]

def main():
    # Define six points coordinates
    points = {
        0: (300, 800),  # Base point
        1: (400, 80),   # Index 1
        2: (710, 620),  # Index 2
        3: (130, 210),  # Index 3
        4: (980, 120),  # Index 4
        5: (103, 500)   # Index 5
    }
    
    print("=" * 50)
    print("Cross Product Calculator")
    print("=" * 50)
    
    # Display point coordinates
    print("\nPoint coordinates:")
    for i, (x, y) in points.items():
        print(f"Point {i}: ({x:3d}, {y:3d})")
    
    # Calculate vectors (starting from point 0)
    base_point = points[0]  # (300, 800)
    
    # Vector A = 01 (from point 0 to point 1)
    vector_A = (points[1][0] - base_point[0], points[1][1] - base_point[1])
    
    # Vector B = 02 (from point 0 to point 2)  
    vector_B = (points[2][0] - base_point[0], points[2][1] - base_point[1])
    
    # Vector C = 03 (from point 0 to point 3)
    vector_C = (points[3][0] - base_point[0], points[3][1] - base_point[1])
    
    # Vector D = 04 (from point 0 to point 4)
    vector_D = (points[4][0] - base_point[0], points[4][1] - base_point[1])
    
    # Vector E = 05 (from point 0 to point 5)
    vector_E = (points[5][0] - base_point[0], points[5][1] - base_point[1])
    
    # Display vectors
    print(f"\nVector calculation (starting from point 0 {base_point}):")
    print(f"Vector A (01): {vector_A}")
    print(f"Vector B (02): {vector_B}")
    print(f"Vector C (03): {vector_C}")
    print(f"Vector D (04): {vector_D}")
    print(f"Vector E (05): {vector_E}")
    
    # Calculate cross products between A and other vectors
    cross_products = {
        'A_cross_B': cross_product_2d(vector_A, vector_B),
        'A_cross_C': cross_product_2d(vector_A, vector_C),
        'A_cross_D': cross_product_2d(vector_A, vector_D),
        'A_cross_E': cross_product_2d(vector_A, vector_E)
    }
    
    print(f"\nCross Product calculation results:")
    for name, value in cross_products.items():
        print(f"{name} = {value:8d}")
    
    # Analyze clockwise/counterclockwise relationships
    print(f"\nClockwise/Counterclockwise direction analysis:")
    print(f"Cross product < 0: Clockwise direction (angle < 180°)")
    print(f"Cross product > 0: Counterclockwise direction (angle > 180°)")
    print(f"Cross product = 0: Collinear")
    print("-" * 40)
    
    direction_analysis = {}
    for name, value in cross_products.items():
        point_map = {
            'A_cross_B': ('B', 'Point2'),
            'A_cross_C': ('C', 'Point3'), 
            'A_cross_D': ('D', 'Point4'),
            'A_cross_E': ('E', 'Point5')
        }
        point_name, point_desc = point_map[name]
        
        if value < 0:
            direction = "Clockwise"
            direction_analysis[point_name] = "CW"
        elif value > 0:
            direction = "Counterclockwise"
            direction_analysis[point_name] = "CCW"
        else:
            direction = "Collinear"
            direction_analysis[point_name] = "COLLINEAR"
            
        print(f"{name}: {value:8d} → {point_desc} relative to vector A is {direction}")
    
    # Sort Cross Product results by value (ascending)
    print(f"\nCross Product sorting results (ascending):")
    sorted_cross_products = sorted(cross_products.items(), key=lambda x: x[1])
    
    for i, (name, value) in enumerate(sorted_cross_products):
        symbol_map = {
            'A_cross_B': 'B (Point2)',
            'A_cross_C': 'C (Point3)', 
            'A_cross_D': 'D (Point4)',
            'A_cross_E': 'E (Point5)'
        }
        direction = "Clockwise" if value < 0 else "Counterclockwise"
        print(f"Rank {i+1}: {name} = {value:8d}  [{symbol_map[name]} - {direction}]")
    
    # Analyze overall polygon clockwise/counterclockwise direction
    print(f"\nPolygon overall direction analysis:")
    # Use correct counterclockwise order: 0→5→3→1→4→2
    correct_order = [0, 5, 3, 1, 4, 2]
    polygon_points = [points[i] for i in correct_order]
    
    def calculate_polygon_orientation(pts):
        """Calculate polygon direction (using shoelace formula sign)"""
        n = len(pts)
        area_sum = 0
        for i in range(n):
            j = (i + 1) % n
            area_sum += (pts[j][0] - pts[i][0]) * (pts[j][1] + pts[i][1])
        return area_sum
    
    print(f"Correct counterclockwise point order: {' → '.join(map(str, correct_order))}")
    for i, point_idx in enumerate(correct_order):
        print(f"  Step{i+1}: Point{point_idx} {points[point_idx]}")
    
    orientation = calculate_polygon_orientation(polygon_points)
    if orientation > 0:
        print(f"Polygon direction: Clockwise (Shoelace sum: {orientation})")
    elif orientation < 0:
        print(f"Polygon direction: Counterclockwise (Shoelace sum: {orientation})")
    else:
        print(f"Degenerate polygon (all points collinear)")
        
    # Direction statistics
    print(f"\nDirection statistics relative to reference vector A:")
    cw_count = sum(1 for v in cross_products.values() if v < 0)
    ccw_count = sum(1 for v in cross_products.values() if v > 0)
    print(f"Clockwise direction: {cw_count} points")
    print(f"Counterclockwise direction: {ccw_count} points")
    
    # Visualize coordinate position relationships
    print(f"\nCoordinate distribution visualization:")
    print("Using point 0 (300, 800) as base point, vector A points to point 1 (400, 80)")
    print("Relative positions of each point:")
    print(f"  Point1 (400,  80): End point of reference vector A (towards bottom-right)")
    print(f"  Point2 (710, 620): Relative to 0 top-right - Counterclockwise (A×B > 0)")
    print(f"  Point3 (130, 210): Relative to 0 bottom-left - Clockwise (A×C < 0)")  
    print(f"  Point4 (980, 120): Relative to 0 bottom-right - Counterclockwise (A×D > 0)")
    print(f"  Point5 (103, 500): Relative to 0 top-left - Clockwise (A×E < 0)")
    
    print(f"\nGeometric interpretation:")
    print(f"- Vector A from base point 0 to point 1 serves as reference direction")
    print(f"- Points 2 and 4 are located on the left side of vector A (counterclockwise direction)")
    print(f"- Points 3 and 5 are located on the right side of vector A (clockwise direction)")
    print(f"- Correct counterclockwise order is: 0→5→3→1→4→2")
    
    # Calculate polar angles of each point relative to base point 0
    print(f"\nPolar angle analysis (using base point 0 as origin):")
    angles = {}
    base_point = points[0]
    
    for i in [1, 2, 3, 4, 5]:
        dx = points[i][0] - base_point[0]
        dy = points[i][1] - base_point[1]
        angle_rad = math.atan2(dy, dx)
        angle_deg = math.degrees(angle_rad)
        if angle_deg < 0:
            angle_deg += 360  # Convert to 0-360 degrees
        angles[i] = angle_deg
        print(f"Point{i}: polar angle = {angle_deg:.1f}°")
    
    # Sort by polar angle
    sorted_by_angle = sorted(angles.items(), key=lambda x: x[1])
    sorted_order = [0] + [point for point, angle in sorted_by_angle]
    print(f"\nCounterclockwise order sorted by polar angle: {' → '.join(map(str, sorted_order))}")
    print(f"User provided correct order:                  {' → '.join(map(str, correct_order))}")
    
    if sorted_order == correct_order:
        print("✓ Polar angle calculation matches user provided order!")
    else:
        print("⚠ Need further verification of order...")
    
    # Prepare data for Hardware implementation
    print(f"\nData prepared for Hardware implementation:")
    
    for name, value in cross_products.items():
        # Convert to 20-bit signed value (assuming 20-bit data width)
        if value >= 0:
            sign = "+"
            magnitude = abs(value)
        else:
            sign = "-"
            magnitude = abs(value)
        
        # 20-bit range: -524288 to 524287
        if magnitude > 524287:
            print(f"Warning: {name} value {value} exceeds 20-bit range!")
        
        # Convert to binary representation
        if value >= 0:
            binary = format(value & 0xFFFFF, '020b')
        else:
            # Two's complement for negative numbers
            binary = format((2**20 + value) & 0xFFFFF, '020b')
            
        print(f"{name:12s}: {value:8d} (0b{binary})")

if __name__ == "__main__":
    main()
