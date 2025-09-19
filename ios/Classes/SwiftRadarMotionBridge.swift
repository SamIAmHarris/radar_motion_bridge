//
 //  SwiftRadarMotionBridge.swift
 //
 import Flutter
 import UIKit

 public class SwiftRadarMotionBridge: NSObject, FlutterPlugin {
   public static func register(with registrar: FlutterPluginRegistrar) {
     // No-op: This plugin only brings in the CocoaPods dependency (RadarSDKMotion).
     // There is no runtime API; Radar is used via the radar_flutter package in your app.
   }
 }
