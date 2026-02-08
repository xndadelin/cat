var x_speed = 0;
var y_speed = 0;

if (keyboard_check(ord("D"))) x_speed = movement_speed;
if (keyboard_check(ord("A"))) x_speed = -movement_speed;
if (keyboard_check(ord("W"))) y_speed = -movement_speed;
if (keyboard_check(ord("S"))) y_speed = movement_speed;

if (x_speed < 0) image_xscale = -1;
else if (x_speed > 0) image_xscale = 1;

if (inv > 0) inv--;
if (lost) exit;

if (x_speed != 0 && y_speed != 0) {
    x_speed *= 0.7071;
    y_speed *= 0.7071;
}

var left_edge  = bbox_left;
var right_edge = bbox_right;
var w = right_edge - left_edge;

if (left_edge > room_width) {
    x -= room_width + w;
    wraps++;
}
else if (right_edge < 0) {
    x += room_width + w;
    wraps++;
}

if (wraps >= 3) {
    room_goto(rm_win);
}

if (!lost) {
    move_and_collide(x_speed, y_speed, oSolid);
}

