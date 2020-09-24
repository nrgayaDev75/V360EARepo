@isTest
private class TestAddSample {
    @isTest static void Testaddsample() {
    
    Test.StartTest();
   
   AddSampleEAData testadd = new AddSampleEAData();
   PageReference pageRef = Page.sampledatasetup; 
   SampleData__c cs = new SampleData__c();
   cs.Name = 'SampleApp';
   cs.Populated__c = 'false'; 
   insert cs;

   Test.setCurrentPage(pageRef);
   testadd.generate();
   testadd.generateResource();
   testadd.DeleteRecords();
   testadd.generateAll();
        
    }
}