ret = 0
for(i=0 ; i<global.mouse_zones ; i+=1)
    {
    if inregion(mouse_x,mouse_y,global.mouse_zone_x1[i],global.mouse_zone_y1[i],
        global.mouse_zone_x2[i],global.mouse_zone_y2[i],0)
            {
            ret = 1
            }
    }
return ret