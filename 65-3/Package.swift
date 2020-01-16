// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "65-3",
    platforms: [
       .macOS(.v10_12),
    ],
    dependencies: [
       .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0-rc.3")
    ],
    targets: [
        
        .target(
            name: "65-3",
            dependencies: ["Alamofire"]),
        .testTarget(
            name: "65-3Tests",
            dependencies: ["65-3"]),
    ]
)
