#
# Be sure to run `pod lib lint Override.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'OverrideTestSupport'
    s.version          = '2.0.0'
    s.summary          = 'Test support helpers for Override feature management pod'
    s.description      = <<-DESC
    This pod provides test support facilities for the Override pod.
    DESC

    s.homepage         = 'https://github.com/Yahoo/Override'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Adam Kaplan' => 'adamkaplan@verizonmedia.com', 'David Grandinetti' => 'dbgrandi@verizonmedia.com' }
    s.source           = { :git => 'git@github.com:Yahoo/Override.git', :tag => s.version.to_s }

    s.ios.deployment_target = '10.0'
    s.tvos.deployment_target = '10.0'

    s.swift_version = '4.0'

    s.source_files = 'Source/TestSupport/*.{swift,h}'

    # Require the version of OverrideTestSupport to match the version of Override
    s.dependency 'Override', '=' + s.version.to_s
end