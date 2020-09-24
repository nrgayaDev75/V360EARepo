public class AddSampleEAData {

public pagereference generate() {
try{
 SampleData__c obj = SampleData__c.getInstance('SampleApp');
 
if(obj.Populated__c == 'false'){

StaticResource defaultProject = [Select  s.Body From StaticResource s where s.Name LIKE 'SampleProject%'];
        blob Data = defaultProject.Body;
        String contentFile = Data.toString();
        String[] filelines = contentFile.split('\n');
        List<Projects__c> defaultsp = new List<Projects__c>();
        for (Integer i=1;i<filelines.size();i++)
        {
            Projects__c p = new Projects__c();
            String[] inputvalues = filelines[i].split(',');
            p.Name = inputValues[0];
            p.Start_Date__c = date.valueof(inputValues[1]);
            p.End_Date__c = date.valueof(inputValues[2]);
            p.Status__c = inputValues[3];
            p.Category__c = inputValues[4];
            p.Country__c = inputValues[5];
            p.sample__c = Boolean.Valueof(inputValues[6]);
            defaultsp.add(p);    
        }
        insert defaultsp;
        }
        
      }catch(exception e){
      
      system.debug('Data Insert Error'+ e.getMessage());
      
      }
      
       return null;
    }
        

     
     
  public pagereference DeleteRecords(){  
 SampleData__c obj = SampleData__c.getInstance('SampleApp');
   
      try{
      
         list<projects__c> proj = [select id from projects__c];
         delete proj;
         list<resource__c> resource = [select id from resource__c];
         delete resource;
         List<Expertise__c> expertise = [select id from expertise__c];
         delete expertise;
         
       obj.Populated__c = 'false';
       update obj;
        
         
         }
         catch(exception e){
      
      system.debug('Data Insert Error'+ e.getMessage());
      
      }
         
        return null;
     }
     
 public pagereference generateResource() {  
 try{    
 StaticResource defaultResource = [Select  s.Body From StaticResource s where s.Name LIKE 'SampleResource%'];
        blob ResourceData = defaultResource.Body;
        String contentFile2 = ResourceData.toString();
        String[] filelines2 = contentFile2.split('\n');
        List<Resource__c> defaultsr = new List<Resource__c>();
        for (Integer i=1;i<filelines2.size();i++)
        {
            Resource__c r = new Resource__c();
            String[] inputvalues = filelines2[i].split(',');
            r.First_Name__c = inputValues[0];
            r.Last_Name__c = inputValues[1];
            r.Years_of_Experience__c = integer.valueof(inputValues[3]);
            r.sample__c = boolean.valueOf(inputValues[4]);
            defaultsr.add(r);    
        }
        insert defaultsr;
        }catch(exception e){
      
      system.debug('Data Insert Error'+ e.getMessage());
      
      }
      
    return null;
   
   }
   
   public pagereference generateExpertise() { 
    try{
        StaticResource defaultskills = [Select  s.Body From StaticResource s where s.Name LIKE 'SampleExpertise%'];
        blob SkillsData = defaultskills.Body;
        String contentFile3 = SkillsData.toString();
        String[] filelines3 = contentFile3.split('\n');
        List<Expertise__c> defaultssk = new List<Expertise__c>();
        for (Integer i=1;i<filelines3.size();i++)
        {
            Expertise__c s = new Expertise__c();
            String[] inputvalues = filelines3[i].split(',');
            s.Name = inputValues[0];
            s.Type__c = inputValues[1];
            s.Certification_Required__c = boolean.valueof(inputValues[2]);
            s.HOT_TECHNOLOGY__C = boolean.valueof(inputValues[3]);
            defaultssk.add(s);    
        }
        insert defaultssk;
         }catch(exception e){
      
      system.debug('Data Insert Error'+ e.getMessage());
      
      }
        return null;
        }
        
   public pagereference generateProjectExpertise() { 
    try{
        StaticResource defaultskills = [Select  s.Body From StaticResource s where s.Name LIKE 'SampleProjExpertise%'];
        blob SkillsData = defaultskills.Body;
        String contentFile3 = SkillsData.toString();
        String[] filelines3 = contentFile3.split('\n');
        List<Projects_and_Expertise__c> defaultssk = new List<Projects_and_Expertise__c>();
        for (Integer i=1;i<filelines3.size();i++)
        {
            Projects_and_Expertise__c s = new Projects_and_Expertise__c();
            String[] inputvalues = filelines3[i].split(',');
            s.EXPERTISE_LEVEL__C = decimal.valueof(inputValues[0]);
            s.NUMBERREQUIRED__C = decimal.valueof(inputValues[1]);
            s.Project_Name_Sample__c = inputValues[2];
            s.Expertise_Name_Sample__c = inputValues[3];
            s.sample__c = boolean.valueof(inputValues[4]);
            
            defaultssk.add(s);    
        }
        insert defaultssk;
         }catch(exception e){
      
      system.debug('Data Insert Error'+ e.getMessage());
      
      }
        return null;
        }
     public pagereference generateResourceExpertise() { 
    try{
        StaticResource defaultskills = [Select  s.Body From StaticResource s where s.Name LIKE 'SampleResExpertise%'];
        blob SkillsData = defaultskills.Body;
        String contentFile3 = SkillsData.toString();
        String[] filelines3 = contentFile3.split('\n');
        List<Resources_Expertise__c> defaultssk = new List<Resources_Expertise__c>();
        for (Integer i=1;i<filelines3.size();i++)
        {
            Resources_Expertise__c s = new Resources_Expertise__c();
            String[] inputvalues = filelines3[i].split(',');
            s.CERTIFIED__C = boolean.valueof(inputValues[0]);
            s.EXPERTISE_LEVEL__C = integer.valueof(inputValues[1]);
            s.Resource_Name_Sample__c = inputValues[2];
            s.Expertise_Name_Sample__c = inputValues[3];
            s.sample__c = boolean.valueof(inputValues[4]);
            
            defaultssk.add(s);    
        }
        insert defaultssk;
         }catch(exception e){
      
      system.debug('Data Insert Error'+ e.getMessage());
      
      }
        return null;
        }
      
      public pagereference generatePRE() { 
    try{
        StaticResource defaultskills = [Select  s.Body From StaticResource s where s.Name LIKE 'SamplePRE%'];
        blob SkillsData = defaultskills.Body;
        String contentFile3 = SkillsData.toString();
        String[] filelines3 = contentFile3.split('\n');
        List<Projects_and_Resources__c> defaultssk = new List<Projects_and_Resources__c>();
        for (Integer i=1;i<filelines3.size();i++)
        {
            Projects_and_Resources__c s = new Projects_and_Resources__c();
            String[] inputvalues = filelines3[i].split(',');
            s.RESOURCE_START_DATE__C = date.valueof(inputValues[0]);
            s.RESOURCE_END_DATE__C = date.valueof(inputValues[1]);
            s.Resource_Name_Sample__c = inputValues[3];
            s.Expertise_Name_Sample__c = inputValues[4];
            s.PROJECT_NAME_SAMPLE__C = inputValues[2];
            s.sample__c = boolean.valueof(inputValues[5]);
            
            defaultssk.add(s);    
        }
        insert defaultssk;
         }catch(exception e){
      
      system.debug('Data Insert Error'+ e.getMessage());
      
      }
        return null;
        }
     
        
        
     
     public pagereference generateAll() {
     generate();
     generateResource();
     generateExpertise();
     generateProjectExpertise();
     generateResourceExpertise();
     generatePRE();
     
     return null;
     
     }   

}