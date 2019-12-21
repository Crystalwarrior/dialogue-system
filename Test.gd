extends Control

onready var dialogue = $DialogueBox/Dialogue
onready var face = $DialogueBox/Face/Portrait
onready var textbox = $DebugBox/Box/SendText

func _on_Play_pressed():
	dialogue.display_text(textbox.text)
	face.play_anim("talk")

func _on_Pause_pressed():
	dialogue.set_paused()
	face.pause_anim()

func _on_Dialogue_finished():
	face.play_anim("idle")
