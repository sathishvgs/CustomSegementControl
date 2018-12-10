
Pod::Spec.new do |s|
  s.name             = 'CustomSegmentControl'
  s.version          = '0.1.5'
  s.summary          = 'CustomSegmentControl is a simple library which helps you to create the customized segment control.'
  s.homepage         = 'https://github.com/sathishvgs/CustomSegmentControl'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sathish Kumar' => 'vgsathish1995@gmail.com' }
  s.source           = { :git => 'https://github.com/sathishvgs/CustomSegmentControl.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'
  s.source_files = 'CustomSegmentControl/Classes/**/*'
end
