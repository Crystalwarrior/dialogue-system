extends Node2D

onready var animationplayer = $AnimationPlayer

func play_anim(anim):
	if animationplayer.has_animation(anim):
		animationplayer.play(anim)
	else:
		animationplayer.stop()

func pause_anim(toggle=null):
	if toggle == null:
		toggle = animationplayer.is_playing()
	if toggle:
		animationplayer.stop()
	else:
		animationplayer.play()
