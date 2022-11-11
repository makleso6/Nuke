// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "Nuke",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "Nuke", targets: ["Nuke"]),
        .library(name: "NukeUI", targets: ["NukeUI"]),
        .library(name: "NukeExtensions", targets: ["NukeExtensions"])
    ],
    dependencies: [
        .package(url: "https://github.com/kaishin/Gifu.git", from: "3.2.2")
        ],
    targets: [
        .target(name: "Nuke"),
        .target(name: "NukeUI", dependencies: [
            "Nuke",
            .product(name: "Gifu", package: "Gifu")
        ]),
        .target(name: "NukeExtensions", dependencies: ["Nuke"])
    ]
)
