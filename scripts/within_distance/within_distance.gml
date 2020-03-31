///@description boolean if arg1 is arg2 pixels or closer
///@param OtherObject
///@param Threshold

var _other = argument0;
var _threshold = argument1;
var _distance = point_distance(x, y,_other.x, _other.y);

return _distance <= _threshold;