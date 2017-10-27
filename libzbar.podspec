
Pod::Spec.new do |s|
  s.name         = "libzbar"
  s.version      = "1.3.2"
  s.summary      = "Fork for the zbar"
  s.homepage     = "https://github.com/John1261/ZBar"
  s.license      = "MIT"
  s.author       = { 'John' => 'john' }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/John1261/ZBar.git", :tag => "iPhoneSDK-1.3.2" }

  s.public_header_files = "iphone/**/**/*.h", "include/*.h"

  s.source_files = "include/zbar.h", "zbar/**/*.h", "iphone/*.h", "iphone/include/**/*.h", "zbar/{config,decoder,error,image,img_scanner,refcnt,scanner,symbol}.c", "zbar/decoder/{codabar,code39,code93,code128,databar,ean,i25,qr_finder}.c", "zbar/qrcode/*.c", "iphone/*.m"

  s.resources = "iphone/res/{zbar-*.png,zbar-help.html}"

  s.frameworks = "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "QuartzCore"

  s.libraries = "iconv"

  s.xcconfig = "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphoneos*][arch=*]": "ZBarReaderViewImpl_Simulator.m",
    "EXCLUDED_SOURCE_FILE_NAMES[sdk=iphonesimulator*][arch=*]": "ZBarReaderViewImpl_Capture.m ZBarCaptureReader.m",
    "GCC_PREPROCESSOR_DEFINITIONS": "NDEBUG=1"

  s.prefix_header_file = "iphone/include/prefix.pch"

  s.compiler_flags = "-w"

  s.requires_arc = false

end