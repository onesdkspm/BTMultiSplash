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
    ]
)
