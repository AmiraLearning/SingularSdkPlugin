var exec = require('cordova/exec');

var SingularSdkPlugin = {
    initSingular: function(phrase, callback) {
        exec(callback, null, 'SingularSdkPlugin', 'initSingular', [phrase]);
    },
    requestPermission: function() {
        return new Promise(function(phrase, callback) {
            exec(callback, null, 'SingularSdkPlugin', "requestPermission", []);
        });
    }
};

module.exports = SingularSdkPlugin;