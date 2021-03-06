
if obj_control.gameover && obj_control.tab = 3
    {
    draw_sprite_ext(spr_upgrade_ring,0,x,y,1,1,0,c_white,obj_control.flash_a)
    if position_meeting(mouse_x,mouse_y,self)
    draw_sprite_ext(spr_select_highlight,0,x,y,1,1,0,c_white,.3)
    
    if selected
        {
        draw_sprite_ext(spr_select_highlight,0,x,y,1,1,0,c_white,.6)
        
        if image_index < upgrades
            {
            message_a = adjust(message_a , 1)
            }
        }
    else
        {
        message_a = adjust(message_a , 0)
        }
        
    cost = image_index * upgrade_coefficient + upgrade_initial_cost
    if global.cash >= cost bspr = spr_button_upgrade else bspr = spr_button_too_expensive
        draw_sprite_ext(spr_message,0,x,y-300-50 + 100 - 100 * message_a,1,1,0,c_white,message_a)
    //draw_sprite(spr_upgrade_icon_double_shot,0,x-250,y-300-50-150)
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_color(c_black)
    draw_set_alpha(message_a)
    draw_set_font(fnt_message)
    scr_paragraph(upgrade[image_index],x-250+20,y-350-150+20 + 100 - 100 * message_a,400,c_black)
    draw_set_alpha(1)
    //draw_text(x-250+10,y-350-150+10,upgrade[image_index])
    if message_a > .1
    if button(bspr,x-160,y-300+15 + 100 - 100 * message_a,320,64,"Upgrade ($"+string(cost)+')',-1,0,"")
        {
        //UPGRADE
        if global.cash >= cost
            {
            image_index++
            global.cash -= cost
            }
        }
            
    if mouse_check_button_pressed(1)
        {
        if position_meeting(mouse_x,mouse_y,self)
            {
            with obj_selectable
            selected = 0
            selected = 1
            }
        else if !scr_in_mouse_zone()
            {
            selected = 0
            }
        }  
    }
