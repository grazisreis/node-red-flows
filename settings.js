module.exports = {
    // Chave fixa — mesma a cada restart, então as credenciais sempre decifram
    credentialSecret: process.env.NODE_RED_CREDENTIAL_SECRET || "helios2024",

    flowFile: "flows.json",
    uiPort: process.env.PORT || 1880,
    
    diagnostics: {
        enabled: true,
        ui: true,
    },
    logging: {
        console: {
            level: "info",
            metrics: false,
            audit: false,
        },
    },
    exportGlobalContextKeys: false,
    externalModules: {},

    editorTheme: {
        projects: {
            enabled: false,
        },
    },

    functionExternalModules: true,
    functionTimeout: 0,
    debugMaxLength: 1000,
    mqttReconnectTime: 15000,
    serialReconnectTime: 15000,
};
