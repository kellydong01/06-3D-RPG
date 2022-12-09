extends RayCast

onready var Player = get_node("/root/Game/Player")

func _ready():
	pass


func _physics_process(_delta):
	if is_colliding() and get_collider().name != "Player":
		Player.target = get_collider()
		var pos = get_collision_point()
		$Reticle.global_transform.origin = pos
	elif $Reticle.translation != Vector3(0, 0, 50):
		$Reticle.translation = Vector3(0, 0, 50)
		Player.target = null
