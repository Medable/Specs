Pod::Spec.new do |s|
  s.name         = 'Medable+ResearchKit'
  s.module_name  = 'ResearchKit'
  s.version      = '1.3.1.0'
  s.summary      = 'ResearchKit is an open source software framework that makes it easy to create apps for medical research or for other research projects.'
  s.homepage     = 'https://www.github.com/ResearchKit/ResearchKit'
  s.documentation_url = 'http://researchkit.github.io/docs/'
  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.author       = { 'researchkit.org' => 'http://researchkit.org' }

  #for now, we're using a forked version of ResearchKit
  #s.source       = { :git => 'https://github.com/ResearchKit/ResearchKit.git', :tag => s.version.to_s }
  s.source       = { :git => 'https://github.com/Medable/ResearchKit.git', :branch => 'Medable_1.3.1', :tag => s.version.to_s }

  #commenting this out for now. This makes all headers be public.
  #s.public_header_files = `./scripts/find_headers.rb --public --private`.split("\n")

  s.source_files = 'ResearchKit/**/*.{h,m}'
  s.resources    = 'ResearchKit/**/*.{fsh,vsh}', 'ResearchKit/Animations/**/*.m4v', 'ResearchKit/Artwork.xcassets', 'ResearchKit/Localized/*.lproj'
  s.platform     = :ios, '8.0'
  s.requires_arc = true
end
