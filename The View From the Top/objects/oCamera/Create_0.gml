/// @desc Set up Camera

cam = view_camera[0];
follow = oPlayer;

view_w_half = camera_get_view_width(cam) * 0.5
view_h_half = camera_get_view_height(cam) * 0.5

xTo = xstart;
yTo = ystart;

mountain_layer = layer_get_id("Mountains");

tree_layer = layer_get_id("Trees");

treeB_layer = layer_get_id("TreeBack");
