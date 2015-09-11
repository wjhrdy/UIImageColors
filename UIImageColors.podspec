Pod::Spec.new do |s|
  s.name        = "UIImageColors"
  s.version     = "0.0.1"
  s.summary     = "iTunes 11 style color fetcher for UIImage"
  s.homepage    = "https://github.com/wjhrdy/UIImageColors"
  s.license     = { :type => "Unlicense" }
  s.authors     = { "Jathu Satkunarajah" => "jathu.satkunarajah@gmail.com" }

  s.requires_arc = true
  s.ios.deployment_target = "8.0"
  s.source   = { :git => "https://github.com/jathu/UIImageColors", :tag => "0.0.1"}
  s.source_files = "Source/*.swift"
end
