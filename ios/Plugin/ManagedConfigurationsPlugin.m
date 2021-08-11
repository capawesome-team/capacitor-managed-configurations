#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(ManagedConfigurationsPlugin, "ManagedConfigurations",
           CAP_PLUGIN_METHOD(getString, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(getInteger, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(getBoolean, CAPPluginReturnPromise);
)
