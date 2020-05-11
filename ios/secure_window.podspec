#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint secure_window.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'secure_window'
  s.version          = '0.0.1'
  s.summary          = 'Secure Window Flutter plugin'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/Abhi9454/secure_window_flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Abhishek Mishra' => 'mishra.abhi8888@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
