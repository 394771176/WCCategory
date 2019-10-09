#
# Be sure to run `pod lib lint WCCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WCCategory'
  s.version          = '0.1.0'
  s.summary          = 'WCCategory'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '常见宏、常用基础类扩展方法'

  s.homepage         = 'https://github.com/394771176/WCCategory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '394771176' => '394771176@qq.com' }
  s.source           = { :git => 'https://github.com/394771176/WCCategory.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#  s.source_files = 'WCCategory/Classes/**/*'

  # s.resource_bundles = {
  #   'WCCategory' => ['WCCategory/Assets/*.png']
  # }

#  s.public_header_files = 'Pod/Classes/**/*.h'

  s.source_files = [
  'WCCategory/Classes/*.h',
  'WCCategory/Classes/Foundation/*.h',
  'WCCategory/Classes/Foundation/*.m',
  'WCCategory/Classes/UIKit/*.h',
  'WCCategory/Classes/UIKit/*.m',
  ]
  
  s.public_header_files = [
  'WCCategory/Classes/*.h',
  'WCCategory/Classes/Foundation/*.h',
  'WCCategory/Classes/UIKit/*.h',
  ]
  
  # md5
  s.subspec 'MD5' do |md|
    md.source_files = [
    'WCCategory/Classes/MD5/*.h',
    'WCCategory/Classes/MD5/*.m'
    ]
    md.public_header_files = [
    'WCCategory/Classes/MD5/*.h'
    ]
  end
  
   s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
