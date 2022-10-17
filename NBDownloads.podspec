Pod::Spec.new do |spec|

  spec.name         = "NBDownloads"
  spec.version      = "0.0.1"
  spec.summary      = "NBDownloads, a framework to download files"

  spec.description  = "Downloading a handful of files is now easy with NBDownloads."

  spec.author       = { "Nithin Bhaktha" => "nithinbhaktha@gmail.com" }

  spec.swift_version = '5.0'
  spec.platforms = {
      "ios": "13.0"
  }

  spec.source       = { :git => "https://github.com/ntnbkta/NBDownloads.git", :tag => "#{spec.version}" }
  spec.source_files = 'NBDownloads/Source/**/*.swift'
  spec.resources = ['NBDownloads/Source/**/*.{storyboard,xcassets,json,imageset,png,strings}']


  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage         = 'https://github.com/ntnbkta/NBDownloads'

end
