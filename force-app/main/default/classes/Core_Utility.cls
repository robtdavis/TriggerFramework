public with sharing class Core_Utility {


    public static String returnObjectAPIName(Id recordId){

        String sObjName = recordId.getSObjectType().getDescribe().getName();

        return sObjName;
    }
}