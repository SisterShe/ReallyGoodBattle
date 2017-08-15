///del_btn_score_up();

//Raies the global score count.
global.score_max = global.score_max + 1;
global.score_label.text = "Kills to Win:#" + string(global.score_max);
