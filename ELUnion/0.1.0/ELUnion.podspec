Pod::Spec.new do |spec|
    spec.name             = 'ELUnion'
    spec.version          = '0.1.0'
    spec.summary          = 'A short description of ELUnion.'
    spec.description      = <<-DESC
                        TODO: Add long description of the pod here.
                       DESC
    spec.homepage         = 'https://github.com/Elottery'
    spec.license          = { :type => 'MIT', :file => 'LICENSE' }
    spec.author           = { 'NicolasKim' => 'jinqiucheng1006@live.cn' }
    spec.source           = { :git => 'https://github.com/Elottery/ELUnion.git', :branch => spec.version}
    spec.ios.deployment_target = '8.0'
    spec.header_dir = 'ELUnion'
    spec.default_subspec = 'ELUIKit'
    spec.subspec 'ELFoundation' do |cs|
        cs.prefix_header_contents = '#import <Foundation/Foundation.h>'
        cs.header_dir = 'ELFoundation'
        cs.frameworks = 'CoreData'
        cs.user_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load','CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'}
        cs.source_files = 'ELUnion/ELFoundation/Classes/**/*.{h,m}'
        cs.public_header_files = 'ELUnion/ELFoundation/Classes/**/*.{h}'
        cs.resources = ['ELUnion/ELFoundation/Classes/ELSocket/SocketDBModel.xcdatamodeld'];
        cs.dependency 'AFNetworking', '~> 3.1.0'
        cs.dependency 'JSONModel', '~> 1.2.0'
        cs.dependency 'HYFileManager'
        cs.dependency 'CocoaAsyncSocket', '~> 7.5.0'
        cs.dependency 'ELUnion/ThirdLib'
    end

    spec.subspec 'ThirdLib' do |cs|
        cs.frameworks = 'SystemConfiguration','CoreGraphics','CoreTelephony','Security','CoreLocation','JavaScriptCore','CoreData','CFNetwork'
        cs.libraries  = 'iconv','sqlite3','stdc++','z'

        cs.subspec 'Wechat' do |css|
            css.source_files = ['ELUnion/ELFoundation/Lib/WXApi.h','ELUnion/ELFoundation/Lib/WechatAuthSDK.h','ELUnion/ELFoundation/Lib/WXApiObject.h']
            css.library = 'WeChatSDK'
            css.preserve_paths = 'ELUnion/ELFoundation/Lib/libWeChatSDK.a'
            css.vendored_library  = 'ELUnion/ELFoundation/Lib/libWeChatSDK.a'
        end
        cs.subspec 'BaiduMob' do |css|
            css.library = 'BaiduMobStat'
            css.source_files = 'ELUnion/ELFoundation/Lib/BaiduMobStat.h'
            css.preserve_paths = 'ELUnion/ELFoundation/Lib/libBaiduMobStat.a'
            css.vendored_library  = 'ELUnion/ELFoundation/Lib/libBaiduMobStat.a'
        end
        cs.subspec 'Tencent' do |css|
            css.preserve_paths = 'ELUnion/ELFoundation/Lib/TencentOpenAPI.framework'
            css.vendored_frameworks = 'ELUnion/ELFoundation/Lib/TencentOpenAPI.framework'
        end
    end

    spec.subspec 'ELUIKit' do |cs|
        cs.header_dir = 'ELUIKit'
        cs.prefix_header_contents = '#import <UIKit/UIKit.h>'
        cs.resources    = ['ELUnion/ELUIKit/Assets/ELShareActionSheetCell.xib',
        'ELUnion/ELUIKit/Assets/ELCommonBetSelectionView/*.xib',
        'ELUnion/ELUIKit/Assets/ELScrollTitleCell.xib']
        cs.source_files =  ['ELUnion/ELUIKit/Classes/ConstantsColors.h',
        'ELUnion/ELUIKit/Classes/Category/*.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELLoadingView.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELNavigationBar.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELProgressView.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELTabbar.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELTabbarItem.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELTabbarItemView.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELActionSheet/*.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELAlertView/*.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELCommonBetSelectionView/*.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELGridView/*.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEW/ELPaoMaDeng/*.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEWCONTROLLER/ELBaseTabbarController.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEWCONTROLLER/ELBaseNavigationController.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEWCONTROLLER/ELBaseViewController.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEWCONTROLLER/ELBaseTableViewController.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEWCONTROLLER/ELBasePageViewController.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEWCONTROLLER/ELCursourView.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEWCONTROLLER/ELScrollTitleBar.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEWCONTROLLER/ELScrollTitleBarFlowLayout.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEWCONTROLLER/ELScrollTitleCell.{h,m}',
        'ELUnion/ELUIKit/Classes/VIEWCONTROLLER/ELContainerViewController.{h,m}']
        cs.dependency      'ELUnion/ELFoundation'
        cs.dependency      'SDWebImage', '~> 3.8.1'
        cs.dependency      'DYMRollingBanner', '~> 2.1.7'
        cs.dependency      'TOCropViewController'
        cs.dependency      'MBProgressHUD'
        cs.dependency      'MJRefresh', '~> 3.1.10'
    end
end
