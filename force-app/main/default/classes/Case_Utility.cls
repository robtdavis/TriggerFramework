public with sharing class Case_Utility {

    private static final String HANDLER_NAME = 'Case_TriggerHandler'; 

    public static void updateCaseSubject(List<Case> caseList){
        for(Case c: caseList){
            c.Subject = 'Cool new Subject';
        }
    }

    public static void createCase(){
        TriggerHandler.bypass(HANDLER_NAME);
        
        Case c = new Case();

        c.Subject = 'Awesome Case';
        insert c;

        TriggerHandler.clearBypass(HANDLER_NAME);
    }
}