# RxNWPathMonitor

**Reactive Extensions for [NWPathMonitor](https://developer.apple.com/documentation/network/nwpathmonitor#).**

## Usage

You can now subscribe your path status just like below:

```swift
// it depends Network.framework and iOS 12 or later
import Network

NWPathMonitor(requiredInterfaceType: .wifi).rx
    .pathUpdate()
    .subscribe(onNext: { path in
        // detect network status with NWPath
    })
```

## Dependencies

### Frameworks

- RxSwift 5.0+
- [Network](https://developer.apple.com/documentation/network)

### SDKs

- iOS 12.0+
- Mac Catalyst 13.0+
- macOS 10.14+
- tvOS 12.0+
- watchOS 5.0+
- Xcode 10.0+

## Installation

### Swift Package Manager

```swift
let package = Package(
    name: "MyPackage",
    products: [...],
    dependencies: [
        .package(url: "https://github.com/fumito-ito/RxNWPathMonitor.git", .upToNextMajor(from: "0.0.1"))
    ]
)
```

### Carthage

```ruby
github "fumito-ito/RxNWPathMonitor" ~> 0.0.1
```

### Cocoapods

```ruby
pod 'RxNWPathMonitor', '~> 0.0.1`
```

RxNWPathMonitor is available under the Apache License 2.0. See the LICENSE file for more detail.