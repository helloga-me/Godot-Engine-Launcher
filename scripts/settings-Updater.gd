extends Control

var dcs = 8192
var a = 0
onready var time = OS.get_system_time_msecs()
func _process(delta):
	if($DCS.pressed and a == 0):
		if not(dcs * 2 > 18000):
			dcs *= 2
		else:
			dcs = 4096
		$DCS.text = "%d"%dcs
		a = 1
		time = OS.get_system_time_msecs()
	if(a == 1 and OS.get_system_time_msecs() - time > 100):
		a = 0
