Pod::Spec.new do |spec|
spec.name= 'ELFoundation'
spec.version= '1.0.3'
spec.platform= :ios, '7.0'
spec.license= 'MIT'
spec.homepage= 'https://github.com/NicolasKim'
spec.authors= { 'Nicolas Kim' => 'jinqiucheng1006@live.cn' }
spec.summary= 'ELFoundation'
spec.source= { :git => 'https://github.com/Elottery/ELFoundation.git', :tag => spec.version }
spec.frameworks = 'SystemConfiguration','CoreGraphics','CoreTelephony','Security','CoreLocation','JavaScriptCore'
spec.libraries  = 'iconv','sqlite3','stdc++','z'

spec.header_dir = 'ELFoundation'



spec.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-fobjc-arc',
                              'FRAMEWORK_SEARCH_PATHS'=>'${PODS_ROOT}/../../ELFoundation/Classes/ThirdLib'}
spec.dependency 'HYFileManager'

spec.subspec 'ELNetworking' do |cs|
    cs.source_files = 'ELFoundation/Classes/ELNetworking/*.{h,m}', 'ELFoundation/Classes/ELBaseService/*.{h,m}'
    cs.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
    cs.dependency 'AFNetworking', '~> 3.1.0'
    cs.dependency 'JSONModel', '~> 1.2.0'
    cs.dependency 'ELFoundation/ELUtils'
end


spec.subspec 'ELDB' do |cs|
    cs.source_files = 'ELFoundation/Classes/ELDB/*.{h,m}'
    cs.frameworks = 'CoreData'
end

spec.subspec 'ELThirdPlatformService' do |cs|
    cs.source_files = 'ELFoundation/Classes/ELThirdPlatformService/*.{h,m}'
    cs.vendored_frameworks = 'ELFoundation/Classes/ThirdLib/TencentOpenAPI.framework'
    cs.vendored_libraries  = [
                                'ELFoundation/Classes/ThirdLib/libWeChatSDK.a',
                                'ELFoundation/Classes/ThirdLib/libBaiduMobStat.a'
                             ]
    cs.dependency  'ELFoundation/ThirdParty'
end

spec.subspec 'ThirdParty' do |cs|
    cs.source_files = 'ELFoundation/Classes/ThirdLib/*.{h,m}'
end

spec.subspec 'ELObjExtensions' do |cs|
    cs.source_files = 'ELFoundation/Classes/ELObjExtensions/*.{h,m}'
end

spec.subspec 'ELSocket' do |cs|
    cs.source_files = 'ELFoundation/Classes/ELSocket/*.{h,m}'
    cs.frameworks = 'CoreData'
    cs.dependency 'CocoaAsyncSocket', '~> 7.5.0'
    cs.resources = ['ELFoundation/Classes/ELSocket/SocketDBModel.xcdatamodeld'];
end

spec.subspec 'ELUtils' do |cs|
    cs.source_files = 'ELFoundation/Classes/*.{h,m}'
end

end
