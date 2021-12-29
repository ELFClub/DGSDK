
Pod::Spec.new do |spec|

  spec.name         = "DGSDK"
  spec.version      = "6.3.6.100"
  spec.summary      = "use DGSDK."

  spec.description  = <<-DESC
                      a easy way to use DGSDK
                   DESC

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author       = { "bruce" => "1064124945@qq.com" }

  spec.platform     = :ios, "10.0"



  spec.homepage     = "https://github.com/ELFClub/DGSDK.git"
  spec.source       = { :git => "https://github.com/ELFClub/DGSDK.git", :tag => spec.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #


  spec.frameworks   = 'UIKit', 'Security', 'AdSupport', 'SystemConfiguration', 'CoreMotion', 'CoreTelephony'
  spec.libraries    = 'c++','resolv','sqlite3','z'
  spec.swift_version    = '5.0'
  spec.vendored_frameworks =  ['DGSDK/Frameworks/CGYSDK.framework','DGSDK/Frameworks/TapDB.framework']
  spec.resource = 'DGSDK/Frameworks/CGYSDK.framework/CGYBundle.bundle'

  valid_archs     = ['armv7','arm64']
  spec.xcconfig   = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }
  # spec.pod_target_xcconfig = {
  #   'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
  # }
  # spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }

  
  spec.dependency 'FBSDKCoreKit','~> 12.2.1'
  spec.dependency 'FBSDKLoginKit','~> 12.2.1'

end
