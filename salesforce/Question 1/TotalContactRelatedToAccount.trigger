trigger TotalContactRelatedToAccount on Contact (after INSERT, after UPDATE, after DELETE) {
    
    if(Trigger.isInsert){
       TotalContactRelatedToAccountHelper.calculateTotalContact(trigger.New);
     }
    if(Trigger.isUpdate|| Trigger.isDelete){
       TotalContactRelatedToAccountHelper.calculateTotalContact(trigger.Old);
    }

}