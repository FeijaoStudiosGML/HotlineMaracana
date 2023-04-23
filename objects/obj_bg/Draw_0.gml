var view_w = room_width
var view_h = room_height
var timer = abs(sin(get_timer() / 3500000))

var anim_cor1 = animcurve_get_channel(ac_colors, 0)
var anim_cor2 = animcurve_get_channel(ac_colors, 1)
var anim_cor3 = animcurve_get_channel(ac_colors, 2)

var anim_val1 = animcurve_channel_evaluate(anim_cor1, timer)
var anim_val2 = animcurve_channel_evaluate(anim_cor2, timer)
var anim_val3 = animcurve_channel_evaluate(anim_cor3, timer)

var cor1 = make_color_rgb(anim_val1, anim_val2, anim_val3)
var cor2 = make_color_rgb(110 * timer * .7, 60 * timer * 1.2, 90)

draw_rectangle_color(0, 0, view_w, view_h, cor1, cor1, cor2, cor2, false)