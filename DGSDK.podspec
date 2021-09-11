
Pod::Spec.new do |spec|

  spec.name         = "DGSDK"
  spec.version      = "6.3.6.8.7"
  spec.summary      = "use DGSDK."

  spec.description  = <<-DESC
                      a easy way to use DGSDK
                   DESC

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author       = { "bruce" => "1064124945@qq.com" }

  spec.platform     = :ios, "9.0"



  spec.homepage     = "https://github.com/ELFClub/DGSDK.git"
  spec.source       = { :git => "https://github.com/ELFClub/DGSDK.git", :tag => spec.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #


  spec.frameworks   = 'UIKit', 'Security', 'AdSupport', 'SystemConfiguration', 'CoreMotion'
  spec.libraries    = 'c++','resolv','sqlite3','z'

#spec.vendored_frameworks =  ['DGSDK/Frameworks/DGSDK.framework','DGSDK/Frameworks/TapDB.framework']
spec.vendored_frameworks =  ['DGSDK/Frameworks/DGSDK.framework']
spec.resource = 'DGSDK/Frameworks/DGSDK.framework/DGBundle.bundle'

  valid_archs     = ['armv7', 'arm64']
  spec.xcconfig   = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }
  
  spec.dependency 'FBSDKCoreKit','~> 11.1.0'
  spec.dependency 'FBSDKLoginKit','~> 11.1.0'

end
