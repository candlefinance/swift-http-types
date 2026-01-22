// swift-tools-version: 5.7.1

import PackageDescription

let package = Package(
    name: "candle-swift-http-types",
    products: [
        .library(name: "CandleHTTPTypes", targets: ["CandleHTTPTypes"]),
    ],
    targets: [
        .target(name: "CandleHTTPTypes"),
        .testTarget(
            name: "HTTPTypesTests",
            dependencies: [
                "CandleHTTPTypes"
            ]
        ),
    ]
)
