Pod::Spec.new do |s|
  s.name             = 'radar_motion_bridge'
  s.version          = '0.0.1'
  s.summary          = 'Bridges RadarSDKMotion for FlutterFlow.'
  s.description      = 'Adds RadarSDKMotion to the iOS build.'
  s.homepage         = 'https://example.com'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Your Team' => 'dev@example.com' }
  s.source           = { :path => '.' }

  s.source_files     = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform         = :ios, '12.0'
  s.swift_version    = '5.0'
  s.static_framework = true

  # Critical dependency for motion metadata
  s.dependency 'RadarSDKMotion', '~> 3.21.5'
end
