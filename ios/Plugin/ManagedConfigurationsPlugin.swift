import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ManagedConfigurationsPlugin)
public class ManagedConfigurationsPlugin: CAPPlugin {
    private let implementation = ManagedConfigurations()

    @objc func getString(_ call: CAPPluginCall) {
        call.reject("Not implemented on iOS.")
    }

    @objc func getInteger(_ call: CAPPluginCall) {
        call.reject("Not implemented on iOS.")
    }

    @objc func getBoolean(_ call: CAPPluginCall) {
        call.reject("Not implemented on iOS.")
    }
}
