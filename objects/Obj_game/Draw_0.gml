switch(room){
	case Rm_game:
draw_text(20, 20, "SCORE: "+string(score));
draw_text(20, 40, "SCORE: "+string(lives));
break;

case Rm_start:
draw_set_halign(fa_center);
var c = c_teal;
draw_text_transformed_color(
room_width/2, 100, "MOTH MELEE",
3, 3, 0, c,c,c,c, 1
);
draw_text(
room_width/2, 200,
@"Score 1,000 points to win!

UP: move
LEFT/RIGHT: change direction
SPACE: shoot

>> PRESS ENTER TO START<<
"
);
draw_set_halign(fa_left);
break;

case Rm_win:
draw_set_halign(fa_center);
var c = c_purple;
draw_text_transformed_color(
room_width/2, 200, "YOU WON!",
3, 3, 0, c,c,c,c, 1
);
draw_text(
room_width/2, 300,
"PRESS ENTER TO RESTART"

);
draw_set_halign(fa_left);
break;

case Rm_game_over:
draw_set_halign(fa_center);
var c = c_red;
draw_text_transformed_color(
room_width/2, 150, "GAME OVER!",
3, 3, 0, c,c,c,c, 1
);
draw_text(
room_width/2, 250,
"FINAL SCORE: " +string(score)
);
draw_text(
room_width/2, 300,
"PRESS ENTER TO RESTART"
);
draw_set_halign(fa_left);
break;
}