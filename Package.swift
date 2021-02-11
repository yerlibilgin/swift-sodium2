// swift-tools-version:5.3
import PackageDescription

//something more

let package = Package(
    name: "Sodium",
     platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Sodium", targets: ["Sodium"]),
    ],
    dependencies: [
      .package(name: "Clibsodium", url: "https://github.com/yerlibilgin/libsodium-xcframework.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "Sodium",
            dependencies: ["Clibsodium"],
            path: "Sodium",
            exclude: ["Info.plist"])
    ]
)
