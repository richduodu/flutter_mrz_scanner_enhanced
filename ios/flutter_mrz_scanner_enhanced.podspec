Pod::Spec.new do |s|
  s.name             = 'flutter_mrz_scanner_enhanced'    
  s.version          = '3.1.5'
  s.summary          = 'An enhanced MRZ‐scanner plugin for Flutter.'
  s.description      = <<-DESC
    An enhanced MRZ‐scanner plugin for Flutter.
  DESC
  s.homepage         = 'https://github.com/ELMEHDAOUIAhmed/flutter_mrz_scanner_enhanced'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'ELMEHDAOUIAHMED' => 'elmehdaoui.ahmed77@gmail.com' }
  s.source           = { :path => '.' }
  s.platform         = :ios, '12.0'
  s.swift_version    = '5.2'
  s.dependency       'Flutter'
  s.dependency       'SwiftyTesseract'
  s.source_files     = 'Classes/**/*.{h,m,swift}'
  s.resources        = ['Assets/TraineedDataBundle.bundle']
  s.pod_target_xcconfig = {
    'DEFINES_MODULE'               => 'YES',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
  }
end