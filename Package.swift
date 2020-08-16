// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "RxNWPathMonitor",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v5),
        .macOS("10.14")
    ],
    products: [
        .library(name: "RxNWPathMonitor", targets: ["RxNWPathMonitor"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(name: "RxNWPathMonitor", dependencies: ["RxSwift"]),
    ],
    swiftLanguageVersions: [.v5]
)
