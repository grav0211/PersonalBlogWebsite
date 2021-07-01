// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "PersonalBlogWebsite",
    products: [
        .executable(
            name: "PersonalBlogWebsite",
            targets: ["PersonalBlogWebsite"]
        )
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "PersonalBlogWebsite",
            dependencies: ["Publish"]
        )
    ]
)