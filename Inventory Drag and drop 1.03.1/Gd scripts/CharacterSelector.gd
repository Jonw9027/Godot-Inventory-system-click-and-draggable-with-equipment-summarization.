extends OptionButton

#This script is to hide objects upon selecting a value
#do as many "characters" as needed
@export var character_1: BoxContainer
@export var character_2: BoxContainer

func init():
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func hide_characters():
	character_1.visible = false
	character_2.visible = false

func _on_item_selected(index):
	hide_characters()
	if selected == 0:
		character_1.visible = true
	if selected == 1:
		character_2.visible = true

