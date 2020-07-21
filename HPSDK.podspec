Pod::Spec.new do |spec|

  spec.name         = "HPSDK"
  spec.version      = "1.0.0"
  spec.summary      = "Just a demo framework which prints given value in console."
  spec.description  = "This is a demo framwrok just builded for study purpose. and it helps to print given value in console."
  spec.homepage     = "https://github.com/hitesh095/HPSDK"
  spec.license      = "MIT"
  spec.author       = { "Hitesh Prajapati" => "hitesh.inofie@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/hitesh095/HPSDK.git", :tag => "1.0.0" }
  spec.source_files  = "HPSDK"
  spec.swift_version = "4.0"

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

end
