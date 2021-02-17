var exec = require('cordova/exec');

var SingularSdkPlugin = {
    initSingular: function(phrase, callback) {
        exec(callback, null, 'SingularSdkPlugin', 'initSingular', [phrase]);
    }
};

module.exports = SingularSdkPlugin;