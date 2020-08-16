Pod::Spec.new do |spec|
  spec.name         = "RxNWPathMonitor"
  spec.version      = "0.0.1"
  spec.summary      = "Reactive Extensions for NWPathMonitor"
  spec.description  = <<-DESC
Reactive Extensions for NWPathMonitor
                   DESC
  spec.homepage     = "https://github.com/fumito-ito/RxNWPathMonitor"
  spec.license      = { :type => "Apatche 2.0", :file => "LICENSE" }
  spec.author             = { "Fumito Ito" => "weathercook@gmail.com" }
  spec.ios.deployment_target = "12.0"
  spec.osx.deployment_target = "10.14"
  spec.watchos.deployment_target = "5.0"
  spec.tvos.deployment_target = "12.0"
  spec.source       = { :git => "https://github.com/fumito-ito/RxNWPathMonitor.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources", "Sources/**/*.swift"
  spec.framework  = "Network"
  spec.requires_arc = true
  spec.dependency "RxSwift", "~> 5.0"
  spec.swift_version = "5.0"

end
