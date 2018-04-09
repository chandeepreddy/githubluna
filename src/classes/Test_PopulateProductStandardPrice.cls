@isTest
public class Test_PopulateProductStandardPrice {
    
    private static testmethod void quoteinserttest(){
        
        Product2 prod = new Product2(Name = 'test');
        insert prod;
        Id pricebookId = Test.getStandardPricebookId();
        PricebookEntry standardPrice = new PricebookEntry(
            Pricebook2Id = pricebookId, Product2Id = prod.Id,
            UnitPrice = 10000, IsActive = true);
        insert standardPrice;
        
        Pricebook2 customPB = new Pricebook2(Name='Custom Pricebook', isActive=true);
        insert customPB;
        
        PricebookEntry customPrice = new PricebookEntry(
            Pricebook2Id = customPB.Id, Product2Id = prod.Id,
            UnitPrice = 12000, IsActive = true);
        insert customPrice;
        
        Account acc = new Account(Name = 'Test Account', Type = 'Vendor');
        insert acc;
        
        Opportunity opp1 = new Opportunity (Name='Opp1', AccountId = acc.id, stagename = '01-New Qualification', closedate = system.today());
        insert opp1;
        
        Pricebook2 pb = new pricebook2(name='test');
        insert pb;  
        
        Quote q1 = new Quote(Steel_Grade__c = Prod.id, name = 'test', freight__c = 0.5, packaging__c = 0.2, opportunityid = opp1.id);
        insert q1;
    }        
}