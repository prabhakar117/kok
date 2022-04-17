public class apexsomeltgclass {
    @AuraEnabled
    public static List<Account> getconaccaa(){
        return [select Id, Name, Phone, (select Id, LastName, FirstName From Contacts) From Account];
    }
     @AuraEnabled
    public static Account getconspecific(string ExternalId){
        return [select Id, Name, Phone, (select Id, LastName, FirstName From Contacts) From Account WHERE AccountNumber=:ExternalId ];
    }

}