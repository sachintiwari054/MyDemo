public class testData {

    public static Book__c getBookRecord(){
        Book__c b = new Book__c(Book_Name__c='Behind the Cloud', Price__c=1000);
        return b;
    }
    
    
}