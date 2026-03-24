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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTMultiSplash/2.0.0/BTMultiSplash.xcframework.zip",
            checksum: "3d22109e15e5a8b0c60251c1c68eff382c33919c952209d27e565fd2626b637e"
        )
    ]
)
