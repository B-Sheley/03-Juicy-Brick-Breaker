extends StaticBody2D

func hit(ball):
	ball.max_speed *= 1.25
	ball.min_speed *= 1.00
	ball.max_speed = clamp(ball.max_speed, ball.max_speed, 1500)
	ball.min_speed = clamp(ball.min_speed, ball.min_speed, ball.max_speed)
	var ball_sound = get_node_or_null("/root/Main_Menu/Ball_Sound")
	if ball_sound != null:
		ball_sound.play()
