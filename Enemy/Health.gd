extends ProgressBar


func _ready():
	pass

func _physics_process(_delta):
	value = get_node("/root/Game/Drone_Container/Drone").health

