
Pod::Spec.new do |s|

  s.name         = "PSGChainedMode"
  s.version      = "1.2.0"
  s.summary      = "A short description of PSGChainedMode."

  s.homepage     = "https://github.com/GuiLQing/PSG_ChainedMode"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "PSG" => "gui950823@126.com" }
  # Or just: s.author    = ""
  # s.authors            = { "" => "" }
  # s.social_media_url   = "http://twitter.com/"

  # s.platform     = :ios
  s.platform     = :ios, "9.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/GuiLQing/PSG_ChainedMode.git", :tag => "#{s.version}" }

  s.source_files  = "PSG_ChainedMode/PSGChainedMode/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # s.framework  = ""
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "ReactiveObjC"
  # s.libraries = "iconv", "xml2"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "ReactiveObjC"

end
