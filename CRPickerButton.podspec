#
# Be sure to run `pod lib lint CRPickerButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CRPickerButton'
  s.version          = '1.0.1'
  s.summary          = 'CRPickerButton for UIButton with UIPickerView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A simple UIPickerView + UIButton UI component. Written in Swift.
                       DESC

  s.homepage         = 'https://github.com/chorim/CRPickerButton'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chorim' => 'me@byeon.is' }
  s.source           = { :git => 'https://github.com/chorim/CRPickerButton.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_versions = '4.0'

  s.source_files = 'CRPickerButton/Classes/**/*'

  s.frameworks = 'UIKit'
end
