# 2D Geometric Transformation Calculator

This is a MATLAB-based calculator that can perform **rotation** and **translation rigid-body transformations** on a **user-defined 2D polygon**.
## Table of Contents
- [Introduction](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/README.md#introduction)
- [Code Description](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/README.md#code-description)
- [Prerequisites](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/README.md#prerequisites)
- [Setup](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/README.md#setup)
- [Calculator User Guide](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/README.md#calculator-user-guide)
- [Examples](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/README.md#examples)

## Introduction
 A geometric transformation is an operation that modifies the shape, size, position, orientation of the object concerning its current configuration operating on the vertices (position vectors).

Using these transformations, the user can enlarge, reduce, rotate, move the geometric object. These transformations are done by changing the coordinates of the geometric object to a new set of values required by the user. 
Geometric transformations can be carried out in either two dimensions or three dimensions. These transformations are further divided into the following:-

1. Rigid-body motion
   - Rotation
   - Translation
   - Reflection
2. Deformation Motion.
   - Shearing
   - Scaling
   - Morphing
 
This calculator can perform rotation and translation rigid-body transformation on a user-defined polygon. The calculator can work in four modes based on the user's requirements. They are:-
1. Only Translation
2. Only Rotation
3. Rotation and then translation
4. Translation and then rotation 

## Code Description
The user can decide which operation is required to run, the type of polygon, the polygon's coordinates, rotation angle, and direction. The code is divided into four parts, three function files and one main file. Different functions are created to perform the calculations of rotation, translation, and plotting. These three functions are named 'Translation',' Rotation', and 'plotDisplay'. The three functions are called in the 'mainfile.'

The 'translation' function takes initial polygon points as a matrix; the x and y coordinates by which the polygon is to be translated are given. The 'rotation' function takes the polygon points to be rotated at the rotation angle and in the direction of rotation. Lastly, the 'plotDisplay' function takes the initial, final, rotated/translated(depending upon user inputs)polygon points to be plotted and a flag to determine if the rotated or translated polygon is plotted.
## Prerequisites
- Installed MATLAB or MATLAB online

## Setup
1. Download and extract all files. **All files should be in the same directory to run this calculator.**
2. Open the 'mainfile' in MATLAB
3. Run the code

## Calculator User Guide
**Press Enter after each input.**
1. Select the mode of the calculator.
2. Input the number of sides of the polygons to be used.
3. Input angle and direction of rotation or input of x and y coordinate by which translation must be done, depending on the mode selected.
4. Input of coordinates of all polygon points in a **matrix form**.
5. The Resultant Polygon is then displayed.

## Examples
- **Example 1 Translation and then rotation:** 
A polygon with coordinates (0,0), (1,-0.5), (2,0.5), (2.2,2), (1.5,2.5), (0.4,2) and performed translation  and then performed rotation by 30° in the clockwise direction. 

 ![EX1](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/Example_Screenshots/EX1.1.png)
 ![EX1](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/Example_Screenshots/EX1.2.png)

- **Example 2 Only Translation :**
A polygon with coordinates (0,0), (1,-0.5), (2,0.5), (2.2,2), (1.5,2.5), (0.4,2) and performed translation on it.
![EX2](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/Example_Screenshots/EX2.png)

- **Example 3 Only Rotation:**
A polygon with coordinates (0,0), (1,-0.5), (2,0.5), (2.2,2), (1.5,2.5), (0.4,2) and performed rotation in the clockwise direction.

![EX3](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/Example_Screenshots/EX3.png)
![EX3](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/Example_Screenshots/EX3_1.png)

- **Example 4  Rotation then Translation:**
A polygon with coordinates (0,0), (1,-0.5), (2,0.5),  (2.2,2), (1.5,2.5), (0.4,2) and performed rotation in the clockwise direction and then translation.

![EX3](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/Example_Screenshots/EX4.png)
![EX3](https://github.com/RoboticistManvir/2D_Geometric_Transformation_Calculator/blob/main/Example_Screenshots/EX4_1.png)
