# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'stub_bug'
  app.identifier = 'com.clok.app'

  app.libs += ['/usr/lib/libz.dylib', '/usr/lib/libsqlite3.dylib', '/usr/lib/libz.1.1.3.dylib' ]

  app.frameworks += [
  	'Accounts',
  	'AdSupport',
    'AudioToolbox',
    'CFNetwork',
    'CoreGraphics',
    'CoreLocation',
    'MobileCoreServices',
    'QuartzCore',
    'Security',
    'Social',
    'MapKit',
    'StoreKit',
    'SystemConfiguration']

  app.pods do
    pod 'AFNetworking'
    pod 'MagicalRecord'
    pod 'SVProgressHUD'
    pod 'iOS-blur'
    pod 'PKRevealController'
    pod 'Facebook-iOS-SDK'
  end

  # configuring facebook
  app.info_plist['FacebookAppID'] = '186237104871046'
  app.info_plist['FacebookDisplayName'] = 'TestApp'
  app.info_plist['URL types'] = { 'URL Schemes' => 'fb186237104871046'}
  app.info_plist['CFBundleURLTypes'] = [{'CFBundleURLSchemes' => ['fb186237104871046']}]

  app.vendor_project('vendor/Parse.framework', :static,
    :products => ['Parse'],
    :headers_dir => 'Headers')
end
