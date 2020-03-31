/// @param movingObject
/// @param groundObject

var _char = argument0;
var _ground = argument1;

if place_meeting(_char.x, _char.y + 1, _ground) {
	return true;
} else {
	return false;
}