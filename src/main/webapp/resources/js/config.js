//QuickBlox
//applicationId=45598
//authorizationkey=Dzxyaev5mUZFUnO
//authorizationSecret=U-hcpk7auGD6L4P
//Endpointwebsetting
//QB.init(45598, "Dzxyaev5mUZFUnO", "U-hcpk7auGD6L4P");
//Androidendpoint
//QBSettings.getInstance().fastConfigInit("45598", "Dzxyaev5mUZFUnO", "U-hcpk7auGD6L4P");

var QBApp = {
  appId: 45598,
  authKey: 'Dzxyaev5mUZFUnO',
  authSecret: 'U-hcpk7auGD6L4P'
};

var config = {
  chatProtocol: {
    active: 2
  },
  debug: {
    mode: 1,
    file: null
  },
  stickerpipe: {
    elId: 'stickers_btn',

    apiKey: '847b82c49db21ecec88c510e377b452c',

    enableEmojiTab: false,
    enableHistoryTab: true,
    enableStoreTab: true,

    userId: null,

    priceB: '0.99 $',
    priceC: '1.99 $'
  }
};

var QBUser1 = {
        id: 16553940,
        name: 'Alon',
        login: 'theonlyalon@hotmail.com',
        pass: 'alonalon00'
    },
    QBUser3 = {
        id: 16464030,
        name: 'Leo',
        login: 'LeoC',
        pass: 'vouchfor00'
    };
    QBUser4 = {
        id: 16878627,
        name: 'Neil',
        login: 'NeilM',
        pass: 'neilneil00'
    };

    QBUser2 = {
        id: 16736835,
        name: 'Justin Davis',
        login: 'JustinD',
        pass: 'justind00'
    };


QB.init(QBApp.appId, QBApp.authKey, QBApp.authSecret, config);
