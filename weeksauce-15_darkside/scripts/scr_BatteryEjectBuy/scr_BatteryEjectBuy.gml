// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_BatteryEjectBuy(_id){
	
	_id.x = x-100;
	_id.y = y-100;
	_id.image_angle = 45;
	_id.ejected = true;

	
	_id.engine_connect_id = noone;
	_id.switch_connect_id = noone;
}