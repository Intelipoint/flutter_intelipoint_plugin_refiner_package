import Flutter
import UIKit
import RefinerSDK

public class SwiftRefinerPackagePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel_name = "refiner_package"
    let channel = FlutterMethodChannel(name: channel_name, binaryMessenger: registrar.messenger())
    let instance = SwiftRefinerPackagePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch(call.method) {
      case "initRefiner":
        RefinerClass.initRefiner(call: call)
      case "identifyUser":
        RefinerClass.identifyUser(call: call)
      default:
        result(false);
    }
  }
}
