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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTMultiSplash/2.0.2-dev-1480311/BTMultiSplash.xcframework.zip",
            checksum: "828575afc3ec36ecb37704e580d0a92c546a2ca041ddbed951ba03e4b4014518"
        )
    ]
)
