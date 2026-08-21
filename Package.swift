// swift-tools-version: 6.4

import PackageDescription

extension String {

    static let whatwgHTMLShared: Self = "WHATWG HTML Shared"

    static let whatwgHTMLFormData: Self = "WHATWG HTML FormData"

    static let whatwgHTML: Self = "WHATWG HTML"

    static let whatwgHTMLDocument: Self = "WHATWG HTML Document"
    static let whatwgHTMLMetadata: Self = "WHATWG HTML Metadata"
    static let whatwgHTMLSections: Self = "WHATWG HTML Sections"
    static let whatwgHTMLGrouping: Self = "WHATWG HTML Grouping"
    static let whatwgHTMLTextSemantics: Self = "WHATWG HTML TextSemantics"
    static let whatwgHTMLLinks: Self = "WHATWG HTML Links"
    static let whatwgHTMLEdits: Self = "WHATWG HTML Edits"
    static let whatwgHTMLEmbedded: Self = "WHATWG HTML Embedded"
    static let whatwgHTMLTables: Self = "WHATWG HTML Tables"
    static let whatwgHTMLForms: Self = "WHATWG HTML Forms"
    static let whatwgHTMLInteractive: Self = "WHATWG HTML Interactive"
    static let whatwgHTMLScripting: Self = "WHATWG HTML Scripting"
    static let whatwgHTMLCustomElements: Self = "WHATWG HTML CustomElements"
    static let whatwgHTMLObsolete: Self = "WHATWG HTML Obsolete"

    static let whatwgHTMLGlobalAttributes: Self = "WHATWG HTML GlobalAttributes"
    static let whatwgHTMLFormAttributes: Self = "WHATWG HTML FormAttributes"
    static let whatwgHTMLLinkAttributes: Self = "WHATWG HTML LinkAttributes"
    static let whatwgHTMLMediaAttributes: Self = "WHATWG HTML MediaAttributes"
    static let whatwgHTMLTableAttributes: Self = "WHATWG HTML TableAttributes"
    static let whatwgHTMLScriptAttributes: Self = "WHATWG HTML ScriptAttributes"

    static let whatwgHTMLElements: Self = "WHATWG HTML Elements"
    static let whatwgHTMLAttributes: Self = "WHATWG HTML Attributes"
}

extension Target.Dependency {

    static var whatwgHTMLShared: Self { .target(name: .whatwgHTMLShared) }
    static var whatwgHTMLFormData: Self { .target(name: .whatwgHTMLFormData) }
    static var whatwgHTML: Self { .target(name: .whatwgHTML) }

    static var whatwgHTMLDocument: Self { .target(name: .whatwgHTMLDocument) }
    static var whatwgHTMLMetadata: Self { .target(name: .whatwgHTMLMetadata) }
    static var whatwgHTMLSections: Self { .target(name: .whatwgHTMLSections) }
    static var whatwgHTMLGrouping: Self { .target(name: .whatwgHTMLGrouping) }
    static var whatwgHTMLTextSemantics: Self { .target(name: .whatwgHTMLTextSemantics) }
    static var whatwgHTMLLinks: Self { .target(name: .whatwgHTMLLinks) }
    static var whatwgHTMLEdits: Self { .target(name: .whatwgHTMLEdits) }
    static var whatwgHTMLEmbedded: Self { .target(name: .whatwgHTMLEmbedded) }
    static var whatwgHTMLTables: Self { .target(name: .whatwgHTMLTables) }
    static var whatwgHTMLForms: Self { .target(name: .whatwgHTMLForms) }
    static var whatwgHTMLInteractive: Self { .target(name: .whatwgHTMLInteractive) }
    static var whatwgHTMLScripting: Self { .target(name: .whatwgHTMLScripting) }
    static var whatwgHTMLCustomElements: Self { .target(name: .whatwgHTMLCustomElements) }
    static var whatwgHTMLObsolete: Self { .target(name: .whatwgHTMLObsolete) }

    static var whatwgHTMLGlobalAttributes: Self { .target(name: .whatwgHTMLGlobalAttributes) }
    static var whatwgHTMLFormAttributes: Self { .target(name: .whatwgHTMLFormAttributes) }
    static var whatwgHTMLLinkAttributes: Self { .target(name: .whatwgHTMLLinkAttributes) }
    static var whatwgHTMLMediaAttributes: Self { .target(name: .whatwgHTMLMediaAttributes) }
    static var whatwgHTMLTableAttributes: Self { .target(name: .whatwgHTMLTableAttributes) }
    static var whatwgHTMLScriptAttributes: Self { .target(name: .whatwgHTMLScriptAttributes) }

    static var whatwgHTMLElements: Self { .target(name: .whatwgHTMLElements) }
    static var whatwgHTMLAttributes: Self { .target(name: .whatwgHTMLAttributes) }

}

let package = Package(
    name: "swift-whatwg-html",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [

        .library(
            name: "WHATWG HTML Shared",
            targets: ["WHATWG HTML Shared"]
        ),

        .library(
            name: "WHATWG HTML FormData",
            targets: ["WHATWG HTML FormData"]
        ),

        .library(
            name: "WHATWG HTML Document",
            targets: ["WHATWG HTML Document"]
        ),
        .library(
            name: "WHATWG HTML Metadata",
            targets: ["WHATWG HTML Metadata"]
        ),
        .library(
            name: "WHATWG HTML Sections",
            targets: ["WHATWG HTML Sections"]
        ),
        .library(
            name: "WHATWG HTML Grouping",
            targets: ["WHATWG HTML Grouping"]
        ),
        .library(
            name: "WHATWG HTML TextSemantics",
            targets: ["WHATWG HTML TextSemantics"]
        ),
        .library(
            name: "WHATWG HTML Links",
            targets: ["WHATWG HTML Links"]
        ),
        .library(
            name: "WHATWG HTML Edits",
            targets: ["WHATWG HTML Edits"]
        ),
        .library(
            name: "WHATWG HTML Embedded",
            targets: ["WHATWG HTML Embedded"]
        ),
        .library(
            name: "WHATWG HTML Tables",
            targets: ["WHATWG HTML Tables"]
        ),
        .library(
            name: "WHATWG HTML Forms",
            targets: ["WHATWG HTML Forms"]
        ),
        .library(
            name: "WHATWG HTML Interactive",
            targets: ["WHATWG HTML Interactive"]
        ),
        .library(
            name: "WHATWG HTML Scripting",
            targets: ["WHATWG HTML Scripting"]
        ),
        .library(
            name: "WHATWG HTML CustomElements",
            targets: ["WHATWG HTML CustomElements"]
        ),
        .library(
            name: "WHATWG HTML Obsolete",
            targets: ["WHATWG HTML Obsolete"]
        ),

        .library(
            name: "WHATWG HTML GlobalAttributes",
            targets: ["WHATWG HTML GlobalAttributes"]
        ),
        .library(
            name: "WHATWG HTML FormAttributes",
            targets: ["WHATWG HTML FormAttributes"]
        ),
        .library(
            name: "WHATWG HTML LinkAttributes",
            targets: ["WHATWG HTML LinkAttributes"]
        ),
        .library(
            name: "WHATWG HTML MediaAttributes",
            targets: ["WHATWG HTML MediaAttributes"]
        ),
        .library(
            name: "WHATWG HTML TableAttributes",
            targets: ["WHATWG HTML TableAttributes"]
        ),
        .library(
            name: "WHATWG HTML ScriptAttributes",
            targets: ["WHATWG HTML ScriptAttributes"]
        ),

        .library(
            name: "WHATWG HTML Elements",
            targets: ["WHATWG HTML Elements"]
        ),
        .library(
            name: "WHATWG HTML Attributes",
            targets: ["WHATWG HTML Attributes"]
        ),

        .library(
            name: "WHATWG HTML",
            targets: ["WHATWG HTML"]
        ),
    ],
    traits: [
        .trait(
            name: "Foundation",
            description: "Foundation integration for WHATWG HTML"
        )
    ],
    dependencies: [
        .package(url: "https://github.com/swift-whatwg/swift-whatwg.git", branch: "main"),
        .package(url: "https://github.com/swift-ietf/swift-rfc-2045.git", branch: "main"),
        .package(url: "https://github.com/swift-iso/swift-iso-8601.git", branch: "main"),
        .package(
            url: "https://github.com/swift-primitives/swift-standard-library-extensions.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-geometry-primitives.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-radix-formatter-primitives.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/swift-primitives/swift-ascii-primitives.git",
            branch: "main"
        ),
    ],
    targets: [

        .target(
            name: "WHATWG HTML Shared",
            dependencies: [
                .product(name: "WHATWG", package: "swift-whatwg"),
                .product(
                    name: "Standard Library Extensions",
                    package: "swift-standard-library-extensions"
                ),
                .product(name: "Geometry Primitives", package: "swift-geometry-primitives"),
                .product(name: "ASCII Primitives", package: "swift-ascii-primitives"),
            ]
        ),

        .target(
            name: "WHATWG HTML FormData",
            dependencies: [
                .whatwgHTMLShared
            ]
        ),

        .target(
            name: "WHATWG HTML GlobalAttributes",
            dependencies: [
                .whatwgHTMLShared,
                .product(name: "ISO 8601", package: "swift-iso-8601"),
                .product(
                    name: "Radix Formatter Primitives",
                    package: "swift-radix-formatter-primitives"
                ),
            ]
        ),
        .target(
            name: "WHATWG HTML FormAttributes",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .product(name: "RFC 2045", package: "swift-rfc-2045"),
                .product(name: "ISO 8601", package: "swift-iso-8601"),
            ]
        ),
        .target(
            name: "WHATWG HTML LinkAttributes",
            dependencies: [
                .whatwgHTMLShared,
                .product(name: "RFC 2045", package: "swift-rfc-2045"),
                .whatwgHTMLMediaAttributes,
            ]
        ),
        .target(
            name: "WHATWG HTML MediaAttributes",
            dependencies: [
                .whatwgHTMLShared,
                .product(name: "RFC 2045", package: "swift-rfc-2045"),
            ]
        ),
        .target(
            name: "WHATWG HTML TableAttributes",
            dependencies: [.whatwgHTMLShared]
        ),
        .target(
            name: "WHATWG HTML ScriptAttributes",
            dependencies: [
                .whatwgHTMLShared,
                .product(name: "RFC 2045", package: "swift-rfc-2045"),
            ]
        ),

        .target(
            name: "WHATWG HTML Document",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Metadata",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLLinkAttributes,
                .whatwgHTMLScriptAttributes,
                .whatwgHTMLFormAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Sections",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Grouping",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLFormAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML TextSemantics",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLLinkAttributes,
                .whatwgHTMLFormAttributes,
                .whatwgHTMLMediaAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Links",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLLinkAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Edits",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Embedded",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLMediaAttributes,
                .whatwgHTMLFormAttributes,
                .whatwgHTMLLinkAttributes,
                .whatwgHTMLScriptAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Tables",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLTableAttributes,
                .whatwgHTMLMediaAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Forms",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLFormAttributes,
                .whatwgHTMLTableAttributes,
                .whatwgHTMLMediaAttributes,
                .whatwgHTMLLinkAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Interactive",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLFormAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Scripting",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLScriptAttributes,
                .whatwgHTMLFormAttributes,
                .whatwgHTMLMediaAttributes,

                .whatwgHTMLLinkAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML CustomElements",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Obsolete",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLTableAttributes,
                .whatwgHTMLFormAttributes,
                .whatwgHTMLMediaAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML Elements",
            dependencies: [
                .whatwgHTMLDocument,
                .whatwgHTMLMetadata,
                .whatwgHTMLSections,
                .whatwgHTMLGrouping,
                .whatwgHTMLTextSemantics,
                .whatwgHTMLLinks,
                .whatwgHTMLEdits,
                .whatwgHTMLEmbedded,
                .whatwgHTMLTables,
                .whatwgHTMLForms,
                .whatwgHTMLInteractive,
                .whatwgHTMLScripting,
                .whatwgHTMLCustomElements,
                .whatwgHTMLObsolete,
            ]
        ),

        .target(
            name: "WHATWG HTML Attributes",
            dependencies: [
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLFormAttributes,
                .whatwgHTMLLinkAttributes,
                .whatwgHTMLMediaAttributes,
                .whatwgHTMLTableAttributes,
                .whatwgHTMLScriptAttributes,
            ]
        ),

        .target(
            name: "WHATWG HTML",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLFormData,
                .whatwgHTMLElements,
                .whatwgHTMLAttributes,
            ]
        ),

        .testTarget(
            name: "WHATWG HTML Tests",
            dependencies: [
                .whatwgHTML,
                .whatwgHTMLShared,
                .whatwgHTMLFormData,
                .whatwgHTMLElements,
                .whatwgHTMLAttributes,
                .whatwgHTMLDocument,
                .whatwgHTMLMetadata,
                .whatwgHTMLSections,
                .whatwgHTMLGrouping,
                .whatwgHTMLTextSemantics,
                .whatwgHTMLEmbedded,
                .whatwgHTMLForms,
                .whatwgHTMLObsolete,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLFormAttributes,
                .whatwgHTMLLinkAttributes,
                .whatwgHTMLMediaAttributes,
                .whatwgHTMLTableAttributes,
                .whatwgHTMLScriptAttributes,
                .product(
                    name: "Standard Library Extensions",
                    package: "swift-standard-library-extensions"
                ),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

extension String {
    var tests: Self { self + " Tests" }
    var foundation: Self { self + " Foundation" }
}

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    let ecosystem: [SwiftSetting] = [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableExperimentalFeature("Lifetimes"),
    ]

    let package: [SwiftSetting] = []

    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
