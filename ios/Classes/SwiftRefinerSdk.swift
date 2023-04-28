import Flutter
import UIKit
import RefinerSdk

public class SwiftRefinerSdk: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel_name = "refiner_sdk"
    let channel = FlutterMethodChannel(name: channel_name, binaryMessenger: registrar.messenger())
    let instance = SwiftRefinerSdk()
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
