// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BacktracePackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BacktracePackage",
            targets: ["Backtrace", "Backtrace_PLCrashReporter"]),
    ],
    targets: [
        .binaryTarget(
            name: "Backtrace_PLCrashReporter",
            path: "./Sources/Backtrace_PLCrashReporter.xcframework"),
        .binaryTarget(
            name: "Backtrace",
            path: "./Sources/Backtrace.xcframework"),
    ]
)
