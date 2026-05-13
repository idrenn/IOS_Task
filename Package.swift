import PackageDescription

let package = Package(
    name: "IOS_Task",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "IOS_Task", targets: ["IOS_Task"])
    ],
    targets: [
        .target(name: "IOS_Task"),
        .testTarget(name: "IOS_TaskTests", dependencies: ["IOS_Task"])
    ]
)
