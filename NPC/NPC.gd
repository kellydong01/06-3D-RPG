extends KinematicBody

onready var Dialogue = get_node("/root/Game/UI/Dialogue")

var dialogue =[
	"Welcome to the game! (Press E to continue)",
	"You will die if you don't shoot accurately and move properly.",
	"Shoot all the targets (4) in this little camp and then you are able to target the drone.",
	"Be sure to defeat that wicked drone flying around, as it has rain terror here for a long time...",
	"Times a tickin', so you better hurry. Best of luck Wanderer.",
	"(Press E to start)"
]

func _ready():
	$AnimationPlayer.play("Idle")
	Dialogue.connect("finished_dialogue", self, "finished")


func _on_Area_body_entered(body):
	if body.name == "Player":
		Dialogue.start_dialogue(dialogue)


func _on_Area_body_exited(body):
	if body.name == "Player":
		Dialogue.hide_dialogue()

func finished():
	get_node("/root/Game/Target_Container").show()
	Global.time = 100
	Global.update_time()
	get_node("/root/Game/UI/Timer").start()
