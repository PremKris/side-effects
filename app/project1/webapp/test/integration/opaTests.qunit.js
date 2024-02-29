sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/patient_det2List',
		'project1/test/integration/pages/patient_det2ObjectPage'
    ],
    function(JourneyRunner, opaJourney, patient_det2List, patient_det2ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThepatient_det2List: patient_det2List,
					onThepatient_det2ObjectPage: patient_det2ObjectPage
                }
            },
            opaJourney.run
        );
    }
);