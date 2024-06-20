// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fadeToRoom(_room, _dur, _colorF){
	var _inst = instance_create_depth(0, 0, 0, oFade);
	
	with(_inst){
		targetRoom = _room;
		duration = _dur;
		color = _colorF;
	}
	
}