global class MyPicklistOption implements omnistudio.VlocityOpenInterface  {  // vlocity_ins

    public Boolean invokeMethod(String methodName,
                                Map<String, Object> input, 
                                Map<String, Object> outMap, 
                                Map<String, Object> options) {
                                    
                                    if(methodName.equals('AccountNames')) {
          								List<Map<String, String>> UIoptions = new List<Map<string, String>>();
                                        
                                        for(Account acc : [Select id, Name from Account]){
                                            Map<String, String> tempMap = new Map<String, String>();
                                            tempMap.put('name', acc.Id);
                                            tempMap.put('value', acc.Name);
                                            
                                            UIoptions.add(tempMap);
                                        }
                                        outMap.put('options', UIoptions);
       								}
                                    
                                    else if(methodName.equals('ContactNames')) {
          								List<Map<String, String>> UIoptions = new List<Map<string, String>>();
                                        
                                        for(Contact con : [Select id, Name from Contact]){
                                            Map<String, String> tempMap = new Map<String, String>();
                                            tempMap.put('name', con.Id);
                                            tempMap.put('value', con.Name);
                                            
                                            UIoptions.add(tempMap);
                                        }
                                        outMap.put('options', UIoptions);
       								}
        							return true;
    }
    
}