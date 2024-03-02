function scr_loadGame(){
	if(file_exists("savedgame.save")){
		var _buffer = buffer_load("savedgame.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		var _loadGame = json_parse(_string);
		while(array_length(_loadGame) > 0){
			var _loadEntity = array_pop(_loadGame);
		
			with(obj_controller){
				global.record = _loadEntity.record;
				global.coins = _loadEntity.coins;
				global.skinSelected = _loadEntity.skin;
			}
		}
		show_debug_message("Game Loaded!" + _string);
	}
}