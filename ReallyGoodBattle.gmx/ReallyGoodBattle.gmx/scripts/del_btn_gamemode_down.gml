///del_btn_gamemode_down();

//Toogles gamemodes.
switch (global.gamemode)
{
    case "Kills to Win":
    global.gamemode = "Captures to Win";
    break;
    
    case "Player Lives":
    global.gamemode = "Kills to Win";
    break;
    
    case "Captures to Win":
    global.gamemode = "Player Lives";
    break;
}

//Updates gamemode label.
global.gamemode_label.text = global.gamemode;
