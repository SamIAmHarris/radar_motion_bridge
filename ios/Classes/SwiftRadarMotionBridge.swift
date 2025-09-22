//
//  SwiftRadarMotionBridge.swift
//
import Flutter
import UIKit
import RadarSDK
import RadarSDKMotion 

 public class SwiftRadarMotionBridge: NSObject, FlutterPlugin {
   public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "radar_motion_bridge",
                                       binaryMessenger: registrar.messenger())
    let instance = SwiftRadarMotionBridge()
    registrar.addMethodCallDelegate(instance, channel: channel)
   }

   public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "enableLocationMetadata":
      // Depending on Radar iOS SDK version, the configuration API is one of these shapes.
      // Keep the one that compiles for your version:
      DispatchQueue.main.async {

        // Set a new configuration object
        let cfg = RadarSdkConfiguration()
        cfg.useLocationMetadata = true
        Radar.setSdkConfiguration(cfg)

        result(nil)
      }

      case "startMotion":
        DispatchQueue.main.async {
          RadarMotion.start()
          result(nil)
        }

    default:
      result(FlutterMethodNotImplemented)
    }
  }
}