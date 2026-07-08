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
        .package(url: "https://github.com/onesdkspm/BTSDKUIKitCore.git", from: "1.0.0"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTMultiSplash/2.0.2/BTMultiSplash.xcframework.zip",
            checksum: "9a2b52c7dab69d206676cb9c78217ae5f6853638a8c5e2295f5a74d4f9184eb3"
        )
    ]
)
