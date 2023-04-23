global.view_target = obj_player

view_w = VIEW_WIDTH * VIEW_SCALE
view_h = VIEW_HEIGHT * VIEW_SCALE

window_set_size(view_w, view_h)
surface_resize(application_surface, view_w, view_h)
alarm[0] = 1