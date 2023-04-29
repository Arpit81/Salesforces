public class TotalContactRelatedToAccountHelper {
    public static void calculateTotalContact(List<Contact> contactList){
        Set <Id> accountIds = new Set <Id>();
        List <Account> lstAccountsToUpdate = new List <Account>();
            for(Contact con:contactList){
                accountIds.add(con.accountID);
            }
        
        for(Account acc:[SELECT Id,Name,Number_of_Contacts__c,(Select Id from Contacts) from Account where Id IN: accountIds]){
            Account accObj = new Account ();
            accObj.Id = acc.Id;
            accObj.Number_of_Contacts__c = acc.Contacts.size();
            lstAccountsToUpdate.add(accObj);
        }
        
        UPDATE lstAccountsToUpdate;

    }
 
        
}