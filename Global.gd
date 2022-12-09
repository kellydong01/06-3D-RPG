extends Node

var time = 0
var score = 0

func _ready():
	update_score(0)

func _unhandled_input(_event):
	if Input.is_action_pressed("menu"):
		get_tree().quit()

func update_score(s):
	score += s
	get_node("/root/Game/UI/Score").text = "Score: " + str(score)

func update_time():
	var t_min = floor(time/60.0)
	var t_sec = time % 60
	var tim = "Time: %02d" % t_min
	tim += ":%02d" % t_sec
	get_node("/root/Game/UI/Time").text = str(tim)

func reset():
	time = 0
	score = 0
