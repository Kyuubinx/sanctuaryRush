extends Node2D

var spike=preload("res://tile_map.tscn")

var max_spike=1000

func _ready():
	
	for i in range(max_spike):
		var Spike_scene = spike.instantiate()
		Spike_scene.global_position=Vector2(9072 * (i+1), 600)
		$spikeContainer.add_child(Spike_scene)
