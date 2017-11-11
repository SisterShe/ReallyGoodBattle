///dead_mstate
 hspd = 0; 
 vspd = 0; 
 sprite_index = Player_dead_spr
 if (image_index >= 18) {
    if (PlayerNum = 1) {
        Player1Controller_obj.state = C1Inactive_state; 
        
        instance_destroy(); 
        
        }
    if (PlayerNum = 2) {
        Player2Controller_obj.state = C2Inactive_state; 
      
        instance_destroy(); 
        }
    if (PlayerNum = 3) {
        Player3Controller_obj.state = C3Inactive_state; 
       
        instance_destroy(); 
        }
    if (PlayerNum = 4) {
        Player4Controller_obj.state = C4Inactive_state; 
       
        instance_destroy(); 
        }
}
 

