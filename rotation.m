function [x] = rotation(polygon_pnts,val,theta)
    if val == 1
        direction = -1;
    elseif val == 2
        direction = 1;
    end
    rotated_polygon_pnts = [cosd(theta) (direction * sind(theta)) 0; (direction * -sind(theta)) cosd(theta) 0; 0 0 1 ] * (polygon_pnts.');
    x= rotated_polygon_pnts.';
    fprintf("Rotated Polygon points are : \n");
    disp(x);
end