Pod::Spec.new do |spec|
spec.name         = 'ELNetworking'
spec.version      = '1.0'
spec.platform     = :ios
spec.ios.deployment_target = '7.0'
spec.license      = 'MIT'
spec.homepage     = 'https://github.com/Elottery/ELNetworking'
spec.authors      = { 'Elottery' => 'longbin@intradak.cn' }
spec.summary      = 'ELNetworking'
spec.source       = { :git => 'https://github.com/Elottery/ELNetworking.git', :tag => spec.version }
spec.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
spec.source_files = 'ELNetworking/**/*.{h,m}'
spec.dependency 'AFNetworking', '~> 3.1.0'
spec.dependency 'JSONModel', '~> 1.2.0'
end
