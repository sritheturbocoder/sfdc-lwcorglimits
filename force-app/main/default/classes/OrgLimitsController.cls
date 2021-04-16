public with sharing class OrgLimitsController {

    @AuraEnabled(cacheable=true)
    public static List<OrgLimitsData> getOrgLimits() {
        System.debug('INSIDE GETORGLIMITS');
        Map<String,System.OrgLimit> limitsMap = OrgLimits.getMap();
        List<OrgLimitsData> listorgLimits = new List<OrgLimitsData>();

        for (String key : limitsMap.keySet()){
            System.OrgLimit apiRequestsLimit = limitsMap.get(key);
            OrgLimitsData orgLimit = new OrgLimitsData(apiRequestsLimit.getName(), apiRequestsLimit.getValue(), apiRequestsLimit.getLimit());
            listorgLimits.add(orgLimit);
            System.debug('Limit Name: ' + apiRequestsLimit.getName());
            System.debug('Usage Value: ' + apiRequestsLimit.getValue());
            System.debug('Maximum Limit: ' + apiRequestsLimit.getLimit());
        }

        return listorgLimits;
    }
}