extends Button
@export var exiting_screen: PanelContainer
@export var entering_screen: PanelContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	exiting_screen.visible = false
	entering_screen.visible = true
