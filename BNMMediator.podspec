#
# Be sure to run `pod lib lint Categories.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "BNMMediator"
  s.version          = "0.0.7"
  s.summary          = "BNMMediator."
  s.description      = <<-DESC
                        This pod provides a solution of modularization which is lightweight and efficient;.
                       DESC
  s.homepage         = "http://www.baidu.com"
   s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = "chenshuijin@baidu.com"
  s.source           = { :git => "https://github.com/csjhrdd11314/BNMMediator.git", :tag => "0.0.7" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

#*********************************Core******************************#

  s.subspec 'Core' do |core|
    core.source_files = "*.{h,m}"
    core.public_header_files = "*.h"
  end

#*********************************ModuleA******************************#

  s.subspec 'ModuleA' do |modA|
    modA.source_files = "Categories/ModuleA/**/*.{h,m}"
    modA.public_header_files = "Categories/ModuleA/**/*.h"
    modA.ios.resource_bundle = { 'ModuleAResources' => 'Categories/ModuleA/**/*.png' }
    modA.dependency 'BNMMediator/Core'
  end

end
