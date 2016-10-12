Pod::Spec.new do |spec|
spec.name= 'ELUIKit'
spec.version= '1.0'
spec.platform= :ios
spec.ios.deployment_target = '7.0'
spec.license= 'MIT'
spec.homepage= 'https://github.com/NicolasKim'
spec.authors= { 'Nicolas Kim' => 'jinqiucheng1006@live.cn' }
spec.summary= '内蒙古体彩的UI框架'
spec.source= { :git => 'https://github.com/Elottery/ELUIKit.git', :tag => spec.version }
spec.source_files = 'ELUIKit/**/*.{h,m}'
spec.dependency      'SDWebImage', '~> 3.8.1'
spec.dependency      'MBProgressHUD', '~> 0.9.2'
spec.dependency      'MJRefresh', '~> 3.1.10'
spec.dependency      'DYMRollingBanner', '~> 2.1.7'
spec.dependency      'TOCropViewController'
spec.dependency      'BaiduMapKit'
spec.dependency      'ELFoundation'
end
