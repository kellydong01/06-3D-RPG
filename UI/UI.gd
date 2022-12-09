extends CanvasLayer

var decay = 0.003

func _physics_process(_delta):
	if $Damage.color.a > 0:
		$Damage.color.a -= decay

func add_damage(d):
	$Damage.color.a = clamp($Damage.color.a + d, 0, 1)

func _on_Timer_timeout():
	if Global.time > 0:
		Global.time -= 1
		Global.update_time()
