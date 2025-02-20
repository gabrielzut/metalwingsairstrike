extends Node2D

var bossDestroyed = false

func _ready():
	$CanvasLayer/Fade.fadein("self")

func _on_Spawner_collision(confirmation):
	$Linha.start()
	$Linha2.start()

func _on_Spawner2_collision(confirmation):
	$BarcoEnemy.start()
	$BarcoEnemy2.start()

func _on_Spawner3_collision(confirmation):
	$V.start()

func _on_Spawner4_collision(confirmation):
	$Linha3.start()
	$Linha4.start()
	$Linha5.start()
	$Linha6.start()

func _on_Spawner5_collision(confirmation):
	$BarcoEnemy3.start()
	$BarcoEnemy4.start()

func _on_Spawner6_collision(confirmation):
	$Linha7.start()
	$Linha8.start()

func _on_Spawner7_collision(confirmation):
	$Linha9.start()
	$Linha10.start()
	$BarcoEnemy5.start()

func _on_Spawner8_collision(confirmation):
	$Boss1.start()
	$Boss1Clouds.start()
	$ParallaxBackground.pausado = true
	$ParallaxBackground2.pausado = true

func _on_Spawner9_collision(confirmation):
	$TankEnemy.start()
	$TankEnemy2.start()
	$CanhaoEnemy3.start()
	$CanhaoEnemy4.start()

func _on_Spawner10_collision(confirmation):
	$AviaoEnemy.start()
	$AviaoEnemy2.start()
	$AviaoEnemy3.start()

func _on_Spawner11_collision(confirmation):
	$V2.start()
	$V3.start()

func _on_Spawner12_collision(confirmation):
	$AviaoEnemy4.start()
	$AviaoEnemy5.start()
	$AviaoEnemy6.start()

func _on_Spawner13_collision(confirmation):
	$AviaoGrandeEnemy.start()

func _on_Spawner14_collision(confirmation):
	$Linha11.start()
	$Linha12.start()
	$Linha13.start()
	$Linha19.start()
	$Linha18.start()

func _on_Spawner15_collision(confirmation):
	$AviaoGrandeEnemy2.start()
	$AviaoEnemy7.start()
	$AviaoEnemy8.start()
	$AviaoEnemy9.start()

func _on_Spawner16_collision(confirmation):
	$V4.start()
	$V5.start()
	$V6.start()
	$V7.start()

func _on_Spawner17_collision(confirmation):
	$BarcoEnemy6.start()
	$BarcoEnemy7.start()
	$BarcoEnemy8.start()
	$BarcoEnemy9.start()

func _on_Spawner18_collision(confirmation):
	$Linha14.start()
	$Linha15.start()
	$Linha20.start()
	$Linha21.start()
	$ParallaxBackground2/ParallaxLayer2/Sprite/Tween.interpolate_property($ParallaxBackground2/ParallaxLayer2/Sprite,"modulate",Color("3cffffff"), Color(1, 1, 1, 0),5.0,Tween.TRANS_SINE,Tween.EASE_IN)
	$ParallaxBackground2/ParallaxLayer2/Sprite/Tween.start()

func _on_Spawner19_collision(confirmation):
	$TankEnemy3.start()

func _on_Spawner20_collision(confirmation):
	$V8.start()

func _on_Spawner21_collision(confirmation):
	$Linha16.start()
	$Linha17.start()

func _on_Spawner22_collision(confirmation):
	$AviaoEnemy10.start()
	$AviaoEnemy11.start()

func _on_Spawner23_collision(confirmation):
	$TankEnemy4.start()

func _on_Spawner24_collision(confirmation):
	$BarcoEnemy10.start()

func _on_Boss1_destroyed():
	$Player.finish()
	$CanvasLayer/Fade.fadeout("stage2")

func _on_Fade_animation(source):
	if source == "stage2":
		get_tree().change_scene("res://scenes/stages/stage2.tscn")
	pass

func _on_Spawner25_collision(confirmation):
	$PlayerMusic/Tween.interpolate_property($PlayerMusic,"volume_db",-25,-80,3,Tween.TRANS_SINE,Tween.EASE_IN)
	$PlayerMusic/Tween.start()

func _on_Spawner26_collision(confirmation):
	$PlayerMusic.play(66.10)

func _on_Tween_tween_completed(object, key):
	$PlayerMusic.volume_db = -25
	if bossDestroyed == true:
		$PlayerMusic.stream = preload("res://sound/music/Alexander Ehlers - Flags.ogg")
		$PlayerMusic.play(34.20)
	else:
		$PlayerMusic.stream = preload("res://sound/music/Alexander Ehlers - Doomed.ogg")
		$PlayerMusic.play()

func _on_Boss1_finished():
	bossDestroyed = true
	$PlayerMusic/Tween.interpolate_property($PlayerMusic,"volume_db",-25,-80,2,Tween.TRANS_SINE,Tween.EASE_IN)
	$PlayerMusic/Tween.start()