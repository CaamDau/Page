
Pod::Spec.new do |s|
  s.name             = 'CaamDauPage'
  s.version          = '2.0.0'
  s.summary          = 'CaamDau 系列产品：分页导航控制组件.'
  s.description      = <<-DESC
  TODO: CaamDau 系列产品：iOS 便捷开发套件 Swift 版：iOS项目开发通用&非通用型模块代码，多功能组件，可快速集成使用以大幅减少基础工作量；便利性扩展&链式扩展、UI排班组件Form、正则表达式扩展RegEx、计时器管理Timer、简易提示窗HUD、AppDelegate解耦方案、分页控制Page、自定义导航栏TopBar、阿里矢量图标管理IconFonts、MJRefresh扩展、Alamofire扩展......
  附.各种类库使用示例demo.
                       DESC

  s.homepage         = 'https://github.com/CaamDau'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liucaide' => '565726319@qq.com' }
  s.source           = { :git => 'https://github.com/CaamDau/Page.git', :tag => s.version }

  s.ios.deployment_target = '9.0'
  s.swift_version = ['4.0', '4.2', '5.0', '5.1']
  s.source_files = 'Page/**/*'
  s.frameworks = 'Foundation', 'UIKit'
  s.dependency 'CaamDauExtension'
  s.dependency 'CaamDauForm'
  s.dependency 'CaamDauPopGesture'
  s.dependency 'SnapKit'
end
