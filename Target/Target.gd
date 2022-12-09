extends StaticBody


func _ready():
	pass

func die():
	Global.update_score(20)
	queue_free()
