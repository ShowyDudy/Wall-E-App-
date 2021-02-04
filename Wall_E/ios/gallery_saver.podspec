#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'wall_e'
  s.version          = '0.0.1'
  s.summary          = 'Companion app by 99000 Vikings for Wall-E.'
  s.description      = <<-DESC
Saves images and videos to gallery and photos.
                       DESC
  s.license          = { :file => '../LICENSE' }
  s.author           = { '99000 Vikings Development' => 'suppport@9900-development.ca' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.swift_version = '5.0'

  s.ios.deployment_target = '8.0'
end

