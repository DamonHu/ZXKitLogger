Pod::Spec.new do |s|
s.name = 'ZXKitLogger'
s.swift_version = '5.0'
s.version = '4.0.9'
s.license= { :type => "MIT", :file => "LICENSE" }
s.summary = 'The iOS side displays the output log log on the screen, and can generate log file sharing, which is convenient for debugging information'
s.homepage = 'https://github.com/DamonHu/ZXKitLogger'
s.authors = { 'ZXKitCode' => 'dong765@qq.com' }
s.source = { :git => "https://github.com/DamonHu/ZXKitLogger.git", :tag => s.version}
s.requires_arc = true
s.ios.deployment_target = '11.0'
s.documentation_url = 'http://blog.hudongdong.com/ios/952.html'
s.subspec 'core' do |cs|
    cs.resource_bundles = {
      'ZXKitLogger' => ['pod/assets/**/*']
    }
    cs.library = 'sqlite3'
    cs.source_files = "pod/*.swift", "pod/view/*.swift"
    cs.dependency 'ZXKitUtil', '~>4.0'
end
# s.subspec 'wcdb' do |cs|
#     cs.dependency 'ZXKitLogger/core'
#     cs.dependency 'WCDB.swift'
# end
s.subspec 'socket' do |cs|
    cs.dependency 'ZXKitLogger/core'
    cs.dependency 'CocoaAsyncSocket'
    cs.source_files = "pod/socket/*.swift"
end
s.default_subspecs = "core"
end
