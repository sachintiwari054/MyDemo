@isTest
public class testBook {
 static testMethod void validateHelloWorld() {
     
     Book__c b = testData.getBookRecord();

 System.debug('Price before inserting new book: ' + b.Price__c);
 
 Test.startTest();
 // Insert book
 insert b;
 
 Test.stopTest();
 
 // Retrieve the new book
 b = [SELECT id,Price__c,Discounted_Price__c FROM Book__c WHERE Id =:b.Id];
 System.debug('Price after trigger fired: ' + b.Discounted_Price__c);
 
 // Test that the trigger correctly updated the price

 System.assertEquals(50, b.Discounted_Price__c);
 System.assertNotEquals(10, b.Discounted_Price__c);
     
 }
}