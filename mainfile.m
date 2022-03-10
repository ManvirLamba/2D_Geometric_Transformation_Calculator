process = input("Enter \n1 For only Translation \n2 For only Rotation \n3 For Rotation and then Translation \n4 For Translation and then Rotation \n");
numberOfSides = input("Enter Number of Sides of the Polygon : ");
if process >=2
    theta = input("Enter angle of rotation : ");
    direction = input("Choose \n1 ==> Counter-Clockwise rotation \n2  ==> Clockwise rotation\n");   
end
if process == 1 || process >= 3
    tx = input("Enter X-Coordinate of translation : ");
    ty = input("Enter Y-Coordinate of translation : ");
end  
%Initialization of the Initial Coordinate Matrix for Polygon
initial_polygon_pnts = zeros(numberOfSides,3);  
%Adding values to the matrix using user defined input
for i=1:numberOfSides
    fprintf("Enter X-Coordinate of point %d :", i);
    initial_polygon_pnts(i,1) = input("");
    fprintf("Enter Y-Coordinate of point %d :", i);
    initial_polygon_pnts(i,2) = input("");
    initial_polygon_pnts(i,3) = 1;
end
switch(process)
    case 1
        resultant_polygon_pnts = translation(initial_polygon_pnts,tx,ty);
        extrapoints= 0;
        flag = 0;
    case 2 
        resultant_polygon_pnts = rotation(initial_polygon_pnts,direction,theta);
        extrapoints= 0;
        flag = 0;
    case 3 
        rotated_polygon_pnts = rotation(initial_polygon_pnts,direction,theta);
        translated_polygon_pnts = translation(rotated_polygon_pnts,tx,ty);
        resultant_polygon_pnts=translated_polygon_pnts;
        flag = 1;
        extrapoints = rotated_polygon_pnts;
    case 4
        translated_polygon_pnts = translation(initial_polygon_pnts,tx,ty);
        rotated_polygon_pnts = rotation(translated_polygon_pnts,direction,theta);
        resultant_polygon_pnts=rotated_polygon_pnts;
        flag = 2;
        extrapoints = translated_polygon_pnts;
   otherwise
      fprintf('Please enter a number between 1 to 4\n' );
end
fprintf("Resultant Polygon coordinates are : \n");
disp(resultant_polygon_pnts);
%plotting the polygon
plotDisplay(initial_polygon_pnts,resultant_polygon_pnts,extrapoints,flag);
