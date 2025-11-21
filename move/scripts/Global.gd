extends Node

# Signals to pass the new Score
var score=0
var can_move=true
signal change_score(new_score)
signal change_can_move(new_move)

#Toggle can_move
func toggle_can_move(new_move):
	can_move=new_move
	print("new move")
	emit_signal("change_can_move",can_move)
	
#increase score
func increase_score():
	score += 1
	emit_signal('change_score',score)	
#reset data
func reset_score():
	score=0
	emit_signal("change_score",score)
