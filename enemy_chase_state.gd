class_name EnemyChaseState
extends State


@export var actor: Enemy
@export var vision_cast: RayCast2D

signal lost_player

func _ready() -> void:
	set_physics_process(false)
	
func _enter_state() -> void:
	set_physics_process(true)
	
	
func _exit_state() -> void:
	set_physics_process(false)
	
func _physics_process(delta: float) -> void:
	var direction = Vector2.ZERO.direction_to(actor.get_local_mouse_position())
	actor.velocity = actor.velocity.move_toward(direction * actor.max_speed, actor.acceleration * delta)
	actor.move_and_slide()
	if vision_cast.is_colliding():
		lost_player.emit()
