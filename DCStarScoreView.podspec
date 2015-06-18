Pod::Spec.new do |s|

  s.name         = "DCStarScoreView"
  s.version      = "1.0"
  s.summary      = "A view that indicate score through stars"

  s.homepage     = "https://github.com/Tangdixi/DCStarScoreView" 

  s.license      = { 
	:type => 'MIT', 
	:text => 'The DCTaskReactor use the MIT license' 
  }

  s.author             = { "Tangdixi" => "Tangdixi@gmail.com" }

  s.platform     = :ios, '7.0'

  s.source       = { 
	:git => "https://github.com/Tangdixi/DCStarScoreView.git", 
	:tag => "1.0"
  }

  s.source_files  = 'DCStarScoreView/*.{h,m}'

  s.frameworks = 'Foundation','UIKit'

  s.requires_arc = true

end
