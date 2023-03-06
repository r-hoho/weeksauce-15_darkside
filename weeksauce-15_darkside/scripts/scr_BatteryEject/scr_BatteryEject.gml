// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_BatteryEject(_id){
	
	_id.x = x-50;
	_id.y = y-20;
	_id.image_angle = 45;
	
	_id.engine_connect_id = noone;
	_id.switch_connect_id = noone;
}