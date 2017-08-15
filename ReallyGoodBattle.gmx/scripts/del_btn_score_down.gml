///del_btn_score_down();

//Lowers the global score count.
global.score_max = clamp(global.score_max - 1, 1, 99999999);
global.score_label.text = "Kills to Win:#" + string(global.score_max);
