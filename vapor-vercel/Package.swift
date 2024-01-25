// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "vercel-vapor",
    platforms: [
        .macOS(.v12)
    ],
    dependencies: [
        .package(url: "https://github.com/swift-cloud/Vercel", from: "2.1.0")
    ],
    targets: [
        .executableTarget(name: "App", dependencies: [
            .product(name: "Vercel", package: "Vercel"),
            .product(name: "VercelVapor", package: "Vercel"),
        ])
    ]
)
