function scr_saveGame(){
	var _saveGame = array_create(0);

	//Para cada instancia do obj_ball cria um struct e guarda-o no array _saveGame
	with(obj_controller){
		var _saveEntity = {
			record : global.record,
			coins : global.coins,
			skin : global.skinSelected,
		}
		array_push(_saveGame, _saveEntity);
	}

	//transformar os dados em uma string JSON e salva-la via buffer
	var _string = json_stringify(_saveGame);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "savedgame.save");
	buffer_delete(_buffer);

	show_debug_message("game saved!" + _string);
}