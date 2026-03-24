// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BTMultiSplash",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BTMultiSplash",
            targets: ["BTMultiSplash"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "BTMultiSplash",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTMultiSplash/2.0.0-dev-1406742/BTMultiSplash.xcframework.zip",
            checksum: "5168e5d90ddd4bad0bb5087308ee63ffe0f9591d504d683a893de6c41eeef691"
        )
    ]
)
