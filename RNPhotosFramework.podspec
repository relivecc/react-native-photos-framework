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
  s.source_files  = "ios/**/*.{h,m,swift}"

  s.framework 'XCTest'
  s.dependency 'React'
end