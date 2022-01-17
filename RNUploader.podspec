require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = 'RNUploader'
  s.version          = package['version']
  s.summary          = package['description']
  s.license          = 'MIT'
  s.homepage         = 'https://github.com/muffinFactory/react-native-uploader'
  s.authors          = 'Aroth'
  s.source           = { :git => 'https://github.com/muffinFactory/react-native-uploader.git', :tag => s.version }
  s.source_files     = 'RNUploader/**/*.{h,m}'
  s.requires_arc     = true
  s.platforms        = { :ios => "8.0", :tvos => "9.2" }
  s.dependency         'React'  
end
