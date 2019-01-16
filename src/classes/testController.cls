public class testController {
public boolean isRequestor{get;set;}
public boolean isModsApprover{get;set;}  
public Boolean showMOD {get;set;}
    public testController() {
        isModsApprover = false;
        showMOD = true;
    }
    
    public Boolean getAllowTOCEdit(){
        boolean flagEdit = false;
        isRequestor = true;
        if(isRequestor){
        	flagEdit = true;
        }else{
        	flagEdit = false;
        }
      
     	return flagEdit;   
    } 
}