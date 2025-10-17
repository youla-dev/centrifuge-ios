// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CentrifugeiOS",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CentrifugeiOS",
            targets: ["CentrifugeiOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/iosdevzone/IDZSwiftCommonCrypto.git", from: "0.13.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CentrifugeiOS",
            dependencies: [
                "IDZSwiftCommonCrypto"
            ],
            path: "CentrifugeiOS/Classes",
            exclude: [
                "Info.plist"
            ],
            swiftSettings: [
                .define("SWIFT_PACKAGE")
            ]
        ),
        .testTarget(
            name: "CentrifugeiOSTests",
            dependencies: ["CentrifugeiOS"],
            path: "Example/Tests"
        ),
    ]
)
