Pod::Spec.new do |spec|
spec.name= 'ELFoundation'
spec.version= '1.0'
spec.platform= :ios, '7.0'
spec.license= 'MIT'
spec.homepage= 'https://github.com/NicolasKim'
spec.authors= { 'Nicolas Kim' => 'jinqiucheng1006@live.cn' }
spec.summary= 'ELFoundation'
spec.source= { :git => 'https://github.com/Elottery/ELFoundation.git', :tag => spec.version }
spec.source_files = [
                        'ELFoundation/Classes/*.{h,m}',
                        'ELFoundation/Classes/ELBaseService/*.{h,m}',
                        'ELFoundation/Classes/ELDB/*.{h,m}',
                        'ELFoundation/Classes/ELThirdPlatformService/*.{h,m}',
                        'ELFoundation/Classes/ThirdLib/*.{h}'
                    ]

spec.frameworks = 'SystemConfiguration','CoreGraphics','CoreTelephony','Security','CoreLocation','JavaScriptCore'

spec.libraries  = 'iconv','sqlite3','stdc++','z'

spec.vendored_frameworks = 'ELFoundation/Classes/ThirdLib/TencentOpenAPI.framework'

spec.vendored_libraries  = [
                            'ELFoundation/Classes/ThirdLib/libWeChatSDK.a',
                            'ELFoundation/Classes/ThirdLib/libBaiduMobStat.a'
                           ]

spec.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-fobjc-arc',
                              'FRAMEWORK_SEARCH_PATHS'=>'${PODS_ROOT}/../../ELFoundation/Classes/ThirdLib'}


spec.subspec 'ELNetworking' do |cs|
    cs.source_files = 'ELFoundation/Classes/ELNetworking/*.{h,m}'
    cs.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
    cs.dependency 'AFNetworking', '~> 3.1.0'
    cs.dependency 'JSONModel', '~> 1.2.0'
end

end
