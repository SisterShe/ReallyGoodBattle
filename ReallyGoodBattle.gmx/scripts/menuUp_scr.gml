#define menuUp_scr
///MenuUp_scr
switch (mpos) {
    case 0: {
        Rval += 2; 
        break;
    }
     case 1: {
        Gval += 2; 
        break;
    }
     case 2: {
        Bval += 2; 
        break;
    }
}

#define menuDown_scr
///menuDown_scr
switch (mpos) {
    case 0: {
        Rval -= 2; 
        break;
    }
     case 1: {
        Gval -= 2; 
        break;
    }
     case 2: {
        Bval -= 2; 
        break;
    }
}