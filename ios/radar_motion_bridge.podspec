Pod::Spec.new do |s|
  s.name             = 'radar_motion_bridge'
  s.version          = '0.0.1'
  s.summary          = 'Adds RadarSDKMotion CocoaPods dependency for FlutterFlow Cloud Build.'
  s.description      = 'A tiny bridge that links Radar iOS SDK + Motion and exposes a method channel.'
  s.homepage         = 'www.pistolboundaries.com'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Kaleo Design' => 'sam@kaleo.design' }
  s.source           = { :path => '.' }

  s.source_files     = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.platform         = :ios, '12.0'
  s.swift_version    = '5.0'

  s.dependency 'Flutter'
  s.dependency 'RadarSDK'
  s.dependency 'RadarSDKMotion'
end
