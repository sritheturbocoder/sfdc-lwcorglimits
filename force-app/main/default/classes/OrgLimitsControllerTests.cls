@IsTest
public with sharing class OrgLimitsControllerTests {

    static testMethod void testCountofOrgLimitsCountGreaterThan0() {

        Test.startTest();

        List<OrgLimitsData> limitsData = OrgLimitsController.getOrgLimits();
        System.assert(limitsData.size() > 0, 'Limits must be greater than 0');            

        Test.stopTest();


    }
}
