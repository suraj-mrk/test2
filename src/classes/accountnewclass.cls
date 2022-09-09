public class accountnewclass {
    @AuraEnabled
    public static List<Contact> getName(string n)
    {
        List<Contact> c = [select name ,id,AccountId from Contact where AccountId = :n];
        System.debug('====='+c); return c;
    }
    
    @AuraEnabled
    public static List<Account> getAccount()
    {
        
        List<Account> a = [select name,website,rating,ownership from account];
        System.debug('====='+a); return a;
    }
    
    
    
}