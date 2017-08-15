///del_btn_player_up();

//Increases current player count.
global.keybinding_player = clamp(global.keybinding_player + 1, 1, 4);
global.player_label.text = "Player Slot:#" + string(global.keybinding_player);

//Updates keybindngs for player.
del_btn_update_keybinds();
