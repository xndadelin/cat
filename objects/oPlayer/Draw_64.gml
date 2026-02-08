if (lost) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_red);
    draw_text(room_width / 2, room_height / 2, "YOU GOT EATEN BY A DOG!");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(16, 16, "loops: " + string(wraps) + "/3");