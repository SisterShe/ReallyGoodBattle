///del_btn_gamemode_up();

//Toogles gamemodes.
switch (global.gamemode)
{
    case "Kills to Win":
    global.gamemode = "Player Lives";
    break;
    
    case "Player Lives":
    global.gamemode = "Captures to Win";
    break;
    
    case "Captures to Win":
    global.gamemode = "Kills to Win";
    break;
}

//Updates gamemode label.
global.gamemode_label.text = global.gamemode;
