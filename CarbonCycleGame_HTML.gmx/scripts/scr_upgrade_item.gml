
if obj_control.gameover && obj_control.tab = 3
    {
    //if y < room_height / 2
    //highlight_rot = 180
    //else
    highlight_rot = 0
    
    draw_sprite_ext(spr_upgrade_ring,0,x,y,1,1,highlight_rot,c_white,obj_control.flash_a)
    if position_meeting(mouse_x,mouse_y,self)
    {
    draw_sprite_ext(spr_select_highlight,0,x,y,1,1,highlight_rot,c_white,.3)
    }
    if selected
        {
        draw_sprite_ext(spr_select_highlight,0,x,y,1,1,highlight_rot,c_white,.6)
        }

    }
