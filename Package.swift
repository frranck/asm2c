// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "asm2c",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "asm2c",
            targets: ["asm2c"]),
    ],
    dependencies: [
         .package(url: "https://github.com/crossroadlabs/Regex.git", from: "1.2.0"),
         .package(url: "https://github.com/nicklockwood/Expression.git", from: "0.13.2")
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "asm2c",
            dependencies: ["Regex", "Expression"],
            path: "Sources"),
        .testTarget(
            name: "asm2cTests",
            dependencies: ["asm2c"],
            path: "asmTests"),
    ]
)
