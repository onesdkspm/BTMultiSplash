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
        .package(url: "https://github.com/onesdkspm/BTSDKUIKitCore.git", from: "2.0.3"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTMultiSplash/2.0.3/BTMultiSplash.xcframework.zip",
            checksum: "9af8e9a60491b6d1096ea9aa13398077da705acb4293719f0c005b333f7cb9bf"
        )
    ]
)
