// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Package",
    defaultLocalization: "ja",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "App",
            targets: ["App"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "App",
            dependencies: [],
            plugins: ["SwiftGenPlugin"]
        ),
        
        // === Plugins -----
        
            .binaryTarget(
                name: "swiftgen",
                url: "https://github.com/SwiftGen/SwiftGen/releases/download/6.6.2/swiftgen-6.6.2.artifactbundle.zip",
                checksum: "7586363e24edcf18c2da3ef90f379e9559c1453f48ef5e8fbc0b818fbbc3a045"
            ),

            .plugin(
                name: "SwiftGenPlugin",
                capability: .buildTool(),
                dependencies: ["swiftgen"]
            ),
        
        // ==== Tests -----
        
        .testTarget(
            name: "MyPackageTests",
            dependencies: []),
    ]
)
