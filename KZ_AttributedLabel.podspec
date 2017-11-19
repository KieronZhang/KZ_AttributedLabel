
Pod::Spec.new do |s|

    s.name = 'KZ_AttributedLabel'
    s.version = '0.1'
    s.summary = 'iOS Attributed label.'
    s.homepage = 'https://github.com/KieronZhang/KZ_AttributedLabel'
    s.license = {:type => 'MIT', :file => 'LICENSE'}
    s.author = {'KieronZhang.' => 'https://github.com/KieronZhang'}
    s.platform = :ios, '8.0'
    s.source = {:git => 'https://github.com/KieronZhang/KZ_AttributedLabel.git', :tag => s.version, :submodules => true}
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    s.frameworks = 'UIKit', 'Foundation'
    s.vendored_frameworks = 'KZ_AttributedLabel/KZ_AttributedLabelFramework.framework'
    s.requires_arc = true

end
