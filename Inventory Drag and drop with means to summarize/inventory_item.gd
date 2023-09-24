extends TextureRect
class_name InventoryItem


enum Type {HEAD, CHEST, LEGS, FEET, WEAPON, ACCESSORY, MAIN}

@export var type: Type

@export var physicalattack: int
# this variable is the means to summarize the equipment piece, however it is important to do same in equipment summary
var equipmentsum = [1,1,1,1,1,1,1,1,1,1]
# Custom init function so that it doesn't error
func init(t: Type, i: Texture2D, x: int) -> void:
	type = t
	physicalattack = x
	texture = i
	expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED


# _at_position is not used because it doesn't matter where we click on
# the inventory item.
func _get_drag_data(_at_position: Vector2) -> Variant:
	set_drag_preview(make_drag_preview())
	return self


func make_drag_preview() -> TextureRect:
	var t := TextureRect.new()
	t.texture = texture
	t.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	t.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	t.custom_minimum_size = size
	return t

func _process(_delta):
	equipmentsum[0] = physicalattack

