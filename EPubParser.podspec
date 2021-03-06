Pod::Spec.new do |s|
  s.name                  = 'EPubParser'
  s.version               = '0.0.1'
  s.summary               = 'ePub parser for iOS'
  s.homepage              = 'https://github.com/DaVinAhn/EPubParser'
  s.license               = 'Apache-2.0'
  s.author                = { 'Davin Ahn' => 'm.davinahn@gmail.com' }
  s.source                = { :git => 'https://github.com/DaVinAhn/EPubParser.git', :tag => s.version }

  s.platform              = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  
  s.source_files          = 'EPubParser/*.{swift,h}', 'EPubParser/minizip/*.{c,h}'
  s.public_header_files   = 'EPubParser/*.h'
  s.libraries             = 'z'
  s.preserve_paths        = 'EPubParser/minizip/module.modulemap'
  
  s.pod_target_xcconfig   = { 'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/EPubParser/EPubParser/minizip/**', 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/EPubParser/EPubParser/'}
end
