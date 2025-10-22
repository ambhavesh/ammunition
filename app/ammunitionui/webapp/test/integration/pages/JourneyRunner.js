sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"ammunitionui/test/integration/pages/WeaponsList",
	"ammunitionui/test/integration/pages/WeaponsObjectPage"
], function (JourneyRunner, WeaponsList, WeaponsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('ammunitionui') + '/test/flp.html#app-preview',
        pages: {
			onTheWeaponsList: WeaponsList,
			onTheWeaponsObjectPage: WeaponsObjectPage
        },
        async: true
    });

    return runner;
});

