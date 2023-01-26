score += 10;

instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_large_flower){
		repeat(2){
		var new_asteroid = instance_create_layer(x,y, "Instances",Obj_large_flower);
		new_asteroid.sprite_index = Spr_medium_petal;
	}
	} else if (sprite_index == Spr_medium_petal){
		repeat(2){
		var new_asteroid = instance_create_layer(x,y, "Instances",Obj_large_flower);
		new_asteroid.sprite_index = spr_small_petal;
		}
}

repeat(10){
instance_create_layer(x,y, "Instances",Obj_debree);
}

}