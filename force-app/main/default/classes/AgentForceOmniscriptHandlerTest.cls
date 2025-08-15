@isTest
private class AgentForceOmniscriptHandlerTest {

    @isTest
    static void testProcessOmniscriptHandler() {
        // Set up mock input request
        AgentForceOmniscriptHandler.OSRequest request = new AgentForceOmniscriptHandler.OSRequest();
        request.osType = 'TestType';
        request.osSubType = 'TestSubType';
        request.osLanguage = 'en';

        List<AgentForceOmniscriptHandler.OSRequest> requests = new List<AgentForceOmniscriptHandler.OSRequest>{ request };

        Test.startTest();

        // Call the method under test
        List<AgentForceOmniscriptHandler.OSResponse> responseList = AgentForceOmniscriptHandler.processOmniscriptHandler(requests);

        Test.stopTest();

        // Validate the result
        System.assertNotEquals(null, responseList, 'Response list should not be null');
        System.assertEquals(1, responseList.size(), 'Response list should contain exactly one item');
        System.assertNotEquals(null, responseList[0].resultMap, 'resultMap should not be null');
        System.debug('Response resultMap: ' + responseList[0].resultMap);
    }
}