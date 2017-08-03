Pod::Spec.new do |s|
  s.name             = "BOOLModallyWindow"
  s.version          = "0.1.8"
  s.summary          = "Maybe this is the most decoupled solution to present a window modally. "
  s.description      = <<-DESC
                       Maybe this is the most decoupled solution to present a window modally. Give rights to yourself to custom animation and view. Supports status bar hide or display. Good adaptation for device rotation.
                       DESC
  s.homepage         = "https://github.com/pgbo/BOOLModallyWindow"
  s.license          = 'MIT'
  s.author           = { "pgbo" => "460667915@qq.com" }
  s.source           = { :git => "https://github.com/pgbo/BOOLModallyWindow.git", :tag => s.version.to_s }
  s.social_media_url = 'https://github.com/pgbo'

  s.source_files      = 'Classes/*.{h,m}'
  s.platform          = :ios, '7.0'
  s.requires_arc      = true
  s.frameworks        = 'UIKit', 'Foundation'
end
