// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "KRProgressHUD",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "KRProgressHUD",
            targets: ["KRProgressHUD"]),
    ],
    dependencies: [
        .package(url: "https://github.com/LaurentiuUngur/KRActivityIndicatorView", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "KRProgressHUD",
            dependencies: ["KRActivityIndicatorView"],
            path: "KRProgressHUD/Classes"
        ),
        .testTarget(
            name: "KRProgressHUDTests",
            dependencies: ["KRProgressHUD", "KRActivityIndicatorView"],
            path: "KRProgressHUDTests",
            exclude: ["Info.plist"]
        ),
    ]
)
