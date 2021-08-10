package dev.robingenz.capacitorjs.plugins.managedconfigurations;

import android.content.res.Configuration;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "ManagedConfigurations")
public class ManagedConfigurationsPlugin extends Plugin {

    public static final String ERROR_KEY_MISSING = "key must be provided.";
    public static final String ERROR_TYPE_MISSING = "type must be provided.";
    public static final String ERROR_TYPE_INVALID = "type is invalid.";

    private ManagedConfigurations implementation;

    @Override
    public void load() {
        implementation = new ManagedConfigurations(getBridge());
    }

    @Override
    public void handleOnConfigurationChanged(Configuration newConfig) {
        super.handleOnConfigurationChanged(newConfig);
        implementation.refreshApplicationRestrictions();
    }

    @PluginMethod
    public void get(PluginCall call) {
        String key = call.getString("key");
        if (key == null) {
            call.reject(ERROR_KEY_MISSING);
            return;
        }
        String type = call.getString("type");
        if (type == null) {
            call.reject(ERROR_TYPE_MISSING);
            return;
        }

        JSObject ret = new JSObject();
        switch (type) {
            case "string":
                ret.put("value", implementation.getString(key));
                break;
            case "number":
                ret.put("value", implementation.getInteger(key));
                break;
            case "boolean":
                ret.put("value", implementation.getBoolean(key));
                break;
            default:
                call.reject(ERROR_TYPE_INVALID);
                return;
        }
        call.resolve(ret);
    }
}
