
Pod::Spec.new do |s|
  s.name         = "XCSandboxViewer"
  s.version      = "0.1.1"
  s.ios.deployment_target = '7.0'
  s.summary      = "iOS sandbox viewer in  the real phone !"
  s.homepage     = "https://github.com/follyxing/XCSandboxViewer"
  s.license      = "MIT"
  s.author             = { "follyxing" => "i@xingcheng.me" }
  s.social_media_url   = "https://www.xingcheng.me"
  s.source       = { :git => "https://github.com/follyxing/XCSandboxViewer.git", :tag => s.version }
  s.source_files  = "XCSandboxViewer/**/*.{h,m}"
  s.dependency "GCDWebServer/WebDAV"
  s.requires_arc = true
end
