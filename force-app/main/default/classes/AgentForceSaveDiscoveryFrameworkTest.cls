@isTest
private class AgentForceSaveDiscoveryFrameworkTest {

    @isTest
    static void testProcessSaveDiscoveryFramework() {
        // Create test input
        AgentForceSaveDiscoveryFramework.DFRequest req = new AgentForceSaveDiscoveryFramework.DFRequest();
        req.osType = 'AssessmentType';
        req.osSubType = 'SubAssessment';
        req.osLanguage = 'en';
        req.dataJSON = '{"score":90,"result":"pass"}';

        List<AgentForceSaveDiscoveryFramework.DFRequest> reqList = new List<AgentForceSaveDiscoveryFramework.DFRequest>{ req };

        Test.startTest();
        
        // Call the method under test
        List<AgentForceSaveDiscoveryFramework.DFResponse> responseList = AgentForceSaveDiscoveryFramework.processSaveDiscoveryFramework(reqList);
        
        Test.stopTest();

        // Basic validations
        System.assertNotEquals(null, responseList, 'Response list should not be null');
        System.assertEquals(1, responseList.size(), 'Response list should contain one item');
        System.assertNotEquals(null, responseList[0].resultMap, 'ResultMap should not be null');
        System.debug('Response JSON: ' + responseList[0].resultMap);
    }
}