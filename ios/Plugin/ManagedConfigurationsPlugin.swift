import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ManagedConfigurationsPlugin)
public class ManagedConfigurationsPlugin: CAPPlugin {
    public let errorKeyMissing = "traceName must be provided."
    private var implementation: ManagedConfigurations?
    
    override public func load() {
        implementation = ManagedConfigurations()
    }

    @objc func getString(_ call: CAPPluginCall) {
        guard let key = call.getString("key") else {
            call.reject(errorKeyMissing)
            return
        }
        
        var result = JSObject()
        let keyExists = implementation?.keyExists(key)
        if keyExists == true {
            let value = implementation?.getString(key)
            result["value"] = value
        } else {
            result["value"] = nil
        }
        call.resolve(result)
    }

    @objc func getNumber(_ call: CAPPluginCall) {
        guard let key = call.getString("key") else {
            call.reject(errorKeyMissing)
            return
        }
        
        var result = JSObject()
        let keyExists = implementation?.keyExists(key)
        if keyExists == true {
            let value = implementation?.getInt(key)
            result["value"] = value
        } else {
            result["value"] = nil
        }
        call.resolve(result)
    }

    @objc func getBoolean(_ call: CAPPluginCall) {
        guard let key = call.getString("key") else {
            call.reject(errorKeyMissing)
            return
        }
        
        var result = JSObject()
        let keyExists = implementation?.keyExists(key)
        if keyExists == true {
            let value = implementation?.getBool(key)
            result["value"] = value
        } else {
            result["value"] = nil
        }
        call.resolve(result)
    }
}
