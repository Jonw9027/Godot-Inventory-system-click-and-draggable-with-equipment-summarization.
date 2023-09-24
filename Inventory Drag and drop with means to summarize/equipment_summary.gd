extends BoxContainer
class_name Equipmentsummary
var Physical_attack_sum: int

var emptysum = [0,0,0,0,0,0,0,0,0,0]
@export var weaponslot:InventorySlot
var Weapon_equipmentsum = [1,1,1,1,1,1,1,1,1,1]

@export var accessoryslot:InventorySlot
var Accessory_equipmentsum = [1,1,1,1,1,1,1,1,1,1]
@export var legsslot:InventorySlot
var Legs_equipmentsum = [1,1,1,1,1,1,1,1,1,1]
@export var feetslot:InventorySlot
var Feet_equipmentsum = [1,1,1,1,1,1,1,1,1,1]
@export var chestslot:InventorySlot
var Chest_equipmentsum = [1,1,1,1,1,1,1,1,1,1]
@export var headslot:InventorySlot
var Head_equipmentsum = [1,1,1,1,1,1,1,1,1,1]
#use just init, and not _init to make the program work.
func init(t: InventorySlot, i: int, cms: Vector2) -> void:
	weaponslot = t
	accessoryslot = t
	Physical_attack_sum = i
	custom_minimum_size = cms

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if weaponslot.get_child_count() > 0:
		Weapon_equipmentsum = weaponslot.get_child(0).equipmentsum
	
	if weaponslot.get_child_count() <= 0:
		Weapon_equipmentsum = emptysum
	
	if accessoryslot.get_child_count() >0:
		Accessory_equipmentsum = accessoryslot.get_child(0).equipmentsum
	
	if accessoryslot.get_child_count() <=0:
		Accessory_equipmentsum = emptysum
	
	if legsslot.get_child_count() >0:
		Legs_equipmentsum = accessoryslot.get_child(0).equipmentsum
	
	if legsslot.get_child_count() <=0:
		Legs_equipmentsum = emptysum
	
	if feetslot.get_child_count() >0:
		Feet_equipmentsum = accessoryslot.get_child(0).equipmentsum
	
	if feetslot.get_child_count() <=0:
		Feet_equipmentsum = emptysum
	
	if chestslot.get_child_count() >0:
		Chest_equipmentsum = chestslot.get_child(0).equipmentsum
	
	if chestslot.get_child_count()<=0:
		Chest_equipmentsum = emptysum
	
	if headslot.get_child_count() >0:
		Head_equipmentsum = headslot.get_child(0).equipmentsum
	
	if headslot.get_child_count() <= 0:
		Head_equipmentsum = emptysum
	
	Physical_attack_sum = Weapon_equipmentsum[0] + Accessory_equipmentsum[0] +Legs_equipmentsum[0]+ Feet_equipmentsum[0] + Chest_equipmentsum[0] +Head_equipmentsum[0]
	print(Physical_attack_sum)

