package SingularSdkPlugin;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.singular.sdk.*;

/**
 * This class echoes a string called from JavaScript.
 */
public class SingularSdkPlugin extends CordovaPlugin {
    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("initSingular")) {
            String message = args.getString(0);
            this.initSingular(message, callbackContext);
            return true;
        }
        return false;
    }

    private void initSingular(String message, CallbackContext callbackContext) {
        SingularConfig config = new SingularConfig("perblue_unified", "91941952b6cc0379dee6b02db47b39b4").withCustomUserId("CustomUserId"); //fixme
        if (message != null && message.length() > 0) {
            Singular.init(getApplicationContext(), config);
            callbackContext.success(message);
        } else {
            callbackContext.error("Expected one non-empty string argument.");
        }
    }
}
