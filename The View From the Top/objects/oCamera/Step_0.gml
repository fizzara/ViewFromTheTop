/// @desc Update Camera

//Update destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y-200;
}

//Update camera position
x += (xTo - x)/25;
y += (yTo - y)/25;

//Keep camera in room
x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

//Update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);

if(layer_exists(mountain_layer)){
	layer_x(mountain_layer, x/1.25);
}

if(layer_exists(tree_layer)){
	layer_x(tree_layer, x/1.5);
}

if(layer_exists(treeB_layer)){
	layer_x(treeB_layer, x/1.75);
}
