function [x] = translation(input,tx,ty)
    x = input * [1 0 0;0 1 0;tx ty 1];
    fprintf("Translated Polygon points are : \n");
    disp(x);
end