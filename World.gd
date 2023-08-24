extends Node2D

@onready var collision_polygon_2d: CollisionPolygon2D = $Wall/CollisionPolygon2D
@onready var polygon_2d: Polygon2D = $Wall/Polygon2D


func _ready() -> void:
	RenderingServer.set_default_clear_color(Color.SEA_GREEN)
	polygon_2d.polygon = collision_polygon_2d.polygon


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
