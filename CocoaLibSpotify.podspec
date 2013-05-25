Pod::Spec.new do |s|
  s.name         =  'CocoaLibSpotify'
  s.version      =  '2.4.3'
  s.author       =  'Spotify'
  s.license      =  'BSD 3-Clause'
  s.homepage     =  'https://github.com/spotify/cocoalibspotify'
  s.summary      =  'A Cocoa wrapper for libspotify.'
  s.description  =  "CocoaLibSpotify is an Objective-C wrapper around our libspotify library. It provides easy access to libspotify's features in a friendly, KVC/O compliant Objective-C wrapper."
  s.source       =  { :git => 'https://github.com/navied/cocoalibspotify.git' }
  s.requires_arc =  true

  s.source_files =  'common', 'iOS Library/View Controllers', 'libspotify-12.1.62-iOS-universal/libspotify.framework/Headers'
  s.resource     =  'iOS Library/SPLoginResources.bundle'
  s.frameworks   =  'SystemConfiguration', 'CFNetwork', 'CoreAudio', 'AudioToolbox', 'AVFoundation', 'libspotify'
  s.library      =  'stdc++'
  s.xcconfig     =  { 'OTHER_LDFLAGS' => '$(inherited)' '-all_load', 'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/CocoaLibSpotify/libspotify-12.1.62-iOS-universal' }
  s.platform     =  :ios
end
