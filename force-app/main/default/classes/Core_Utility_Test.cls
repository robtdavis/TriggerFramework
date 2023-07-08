@isTest
private with sharing class Core_Utility_Test {
    
    @isTest
    private static void returnsObjectNamePositive(){

        Account acct = new Account(
            Name = 'Test Account'
        );
        insert acct;

        Test.startTest();
            String objectName = Core_Utility.returnObjectAPIName(acct.Id);
        Test.stopTest();

        Assert.areEqual('Account', objectName);
    }
    
}