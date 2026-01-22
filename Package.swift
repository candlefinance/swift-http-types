// swift-tools-version: 5.7.1

import PackageDescription

let package = Package(
    name: "swift-http-types",
    products: [
        .library(name: "CandleHTTPTypes", targets: ["CandleHTTPTypes"]),
        .library(name: "HTTPTypesFoundation", targets: ["HTTPTypesFoundation"]),
    ],
    targets: [
        .target(name: "CandleHTTPTypes"),
        .target(
            name: "HTTPTypesFoundation",
            dependencies: [
                "CandleHTTPTypes"
            ]
        ),
        .testTarget(
            name: "HTTPTypesTests",
            dependencies: [
                "CandleHTTPTypes"
            ]
        ),
        .testTarget(
            name: "HTTPTypesFoundationTests",
            dependencies: [
                "HTTPTypesFoundation"
            ]
        ),
    ]
)
