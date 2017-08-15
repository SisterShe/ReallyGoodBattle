///del_btn_score_down();

//Lowers the global games count.
global.games_max = clamp(global.games_max - 1, 1, 99999999);
global.game_label.text = "Games to Win:#" + string(global.games_max);
