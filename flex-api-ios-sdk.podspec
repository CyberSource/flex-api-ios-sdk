#
#  Be sure to run `pod spec lint flex-api-ios-sdk.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "flex-api-ios-sdk"
  spec.version      = "1.0.0"
  spec.summary      = "Cybersource Flex V2 iOS SDK."
  spec.description  = "This SDK allows mobile developers to provide credit card payment functionality within their iOS applications, without having to pass sensitive card data back to their application backend servers."
  spec.homepage     = "https://github.com/CyberSource/flex-v2-ios-sample"
  spec.license      = "MIT"
  spec.author       = { "Cybersource" => "www.cybersource.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :path => '.'}

  # spec.source       = { :git => "http://EXAMPLE/flex-api-ios-sdk.git", :tag => "#{spec.version}" }
  spec.source_files  = "flex-api-ios-sdk/**/*.{h,m,swift,modulemap}"
  # spec.exclude_files = "Classes/Exclude"

end
