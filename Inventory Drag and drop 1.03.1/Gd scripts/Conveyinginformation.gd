extends HBoxContainer

#currently useless script.
var string:String
var text: RichTextLabel
# Called when the node enters the scene tree for the first time.

func init(s:String, t:RichTextLabel):
	string = s

func _ready():
	string = "hello world"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
