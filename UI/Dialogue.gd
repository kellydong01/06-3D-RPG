extends Control

var dialogue = []
var dia_pos = 0

signal finished_dialogue

func _ready():
	hide()

func _physics_process(_delta):
	if dialogue.size() and dia_pos < dialogue.size():
		var d = "[center]" + dialogue[dia_pos] + "[/center]"
		if $Dialogue.bbcode_text != d:
			$Dialogue.bbcode_text = d
		if Input.is_action_just_pressed("action"):
			dia_pos += 1
	elif dialogue.size():
		emit_signal("finished_dialogue")
		hide_dialogue()
		

func start_dialogue(d):
	dialogue = d.duplicate()
	dia_pos = 0
	show()
	
func hide_dialogue():
	dialogue = []
	dia_pos = 0
	hide()
