function plotDisplay(initial_polygon_pnts,resultant_polygon_pnts,extrapoints,flag)
    j = plot(polyshape(initial_polygon_pnts(:,1),initial_polygon_pnts(:,2)));
    j.DisplayName = 'Initial Polygon';
    hold on
    f = plot(polyshape(resultant_polygon_pnts(:,1),resultant_polygon_pnts(:,2)));
    f.DisplayName = 'Final Polygon';
    hold on
    if flag > 0
        m = plot(polyshape(extrapoints(:,1),extrapoints(:,2)));
        if flag == 1
            m.DisplayName = 'Rotated Polygon';
        elseif flag == 2
            m.DisplayName = 'Translated Polygon';
        end
    end
    hold off
    legend('show')
    l=min(min(resultant_polygon_pnts)-5);
    u=max(5+max(resultant_polygon_pnts));
    xlim([l u]);
    ylim([l u]);
    pbaspect([1 1 1]);
    grid ON;
end