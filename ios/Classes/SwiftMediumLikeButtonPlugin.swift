import Flutter
import UIKit

public class SwiftMediumLikeButtonPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "medium_like_button", binaryMessenger: registrar.messenger())
    let instance = SwiftMediumLikeButtonPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
