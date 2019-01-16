public class myHelperClass {
    
    public static void applyDiscount(Book__c[] books) {
       for (Book__c b :books){
         b.Discounted_Price__c = b.Price__c * 0.5;
       }
     }
}