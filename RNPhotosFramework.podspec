require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'RNPhotosFramework'
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.requires_arc = true

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = {:git => "ssh://git@github.com/relivecc/react-native-photos-framework.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/RNPhotosFramework/**/*.{h,m,swift}"

  s.dependency 'React'

  s.test_spec 'RNPhotosFrameworkTests' do |test_spec|
    test_spec.source_files = 'ios/RNPhotosFrameworkTests/**/*.{h,m, swift}'
    test_spec.framework = 'XCTest' # This dependency will only be linked with your tests.
  end  
end