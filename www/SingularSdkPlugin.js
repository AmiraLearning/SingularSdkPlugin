var exec = require('cordova/exec');

var SingularSdkPlugin = {
    initSingular: function(phrase, callback) {
        exec(callback, null, 'SingularSdkPlugin', 'initSingular', [phrase]);
    },
    requestPermission: function(callback) {
        return new Promise(function(callback) {
            exec(callback, null, 'SingularSdkPlugin', "requestPermission", []);
        });
    }
};

module.exports = SingularSdkPlugin;