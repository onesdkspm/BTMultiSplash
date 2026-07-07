// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BTMultiSplash",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BTMultiSplash",
            targets: ["BTMultiSplashWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/BTSDKUIKitCore.git", branch: "develop"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "BTMultiSplashWrapper",
            dependencies: [
                .byName(name: "BTMultiSplash"),
                .product(name: "BTSDKUIKitCore", package: "BTSDKUIKitCore"),
            ],
            path: "BTMultiSplashWrapper",
            linkerSettings: [
                // iOS 系统框架
                .linkedFramework("AVKit"),
                
                // 系统库
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "BTMultiSplash",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTMultiSplash/1.1.7-dev-1480088/BTMultiSplash.xcframework.zip",
            checksum: "0b5188d453520c6464a0cfc5eb14be6fe097f1b518c569a66a746d3bb7788edd"
        )
    ]
)
