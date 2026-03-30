// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// MARK: - Target/Product Name Constants

extension String {
    // Core shared module (namespace + protocols)
    static let whatwgHTMLShared: Self = "WHATWG HTML Shared"

    // Data types module
    static let whatwgHTMLFormData: Self = "WHATWG HTML FormData"

    // Umbrella module
    static let whatwgHTML: Self = "WHATWG HTML"

    // Element modules (section-based, matching WHATWG spec structure)
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

    // Attribute modules (usage-based grouping)
    static let whatwgHTMLGlobalAttributes: Self = "WHATWG HTML GlobalAttributes"
    static let whatwgHTMLFormAttributes: Self = "WHATWG HTML FormAttributes"
    static let whatwgHTMLLinkAttributes: Self = "WHATWG HTML LinkAttributes"
    static let whatwgHTMLMediaAttributes: Self = "WHATWG HTML MediaAttributes"
    static let whatwgHTMLTableAttributes: Self = "WHATWG HTML TableAttributes"
    static let whatwgHTMLScriptAttributes: Self = "WHATWG HTML ScriptAttributes"

    // Convenience umbrella modules
    static let whatwgHTMLElements: Self = "WHATWG HTML Elements"
    static let whatwgHTMLAttributes: Self = "WHATWG HTML Attributes"
}

// MARK: - Target Dependency Helpers

extension Target.Dependency {
    // Core
    static var whatwgHTMLShared: Self { .target(name: .whatwgHTMLShared) }
    static var whatwgHTMLFormData: Self { .target(name: .whatwgHTMLFormData) }
    static var whatwgHTML: Self { .target(name: .whatwgHTML) }

    // Elements
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

    // Attributes
    static var whatwgHTMLGlobalAttributes: Self { .target(name: .whatwgHTMLGlobalAttributes) }
    static var whatwgHTMLFormAttributes: Self { .target(name: .whatwgHTMLFormAttributes) }
    static var whatwgHTMLLinkAttributes: Self { .target(name: .whatwgHTMLLinkAttributes) }
    static var whatwgHTMLMediaAttributes: Self { .target(name: .whatwgHTMLMediaAttributes) }
    static var whatwgHTMLTableAttributes: Self { .target(name: .whatwgHTMLTableAttributes) }
    static var whatwgHTMLScriptAttributes: Self { .target(name: .whatwgHTMLScriptAttributes) }

    // Umbrella
    static var whatwgHTMLElements: Self { .target(name: .whatwgHTMLElements) }
    static var whatwgHTMLAttributes: Self { .target(name: .whatwgHTMLAttributes) }

    // External dependencies
    static var rfc2045: Self { .product(name: "RFC 2045", package: "swift-rfc-2045") }
    static var iso8601: Self { .product(name: "ISO 8601", package: "swift-iso-8601") }
    static var standards: Self { .product(name: "Standard Library Extensions", package: "swift-standard-library-extensions") }
    static var geometry: Self { .product(name: "Geometry Primitives", package: "swift-geometry-primitives") }
    static var incits41986: Self { .product(name: "ASCII Primitives", package: "swift-ascii-primitives") }

    // Test dependencies
    static var standardsTestSupport: Self { .product(name: "Test Primitives", package: "swift-test-primitives") }
    static var binary: Self { .product(name: "Binary Primitives", package: "swift-binary-primitives") }
}

// MARK: - Package Definition

let package = Package(
    name: "swift-whatwg-html",
    platforms: [
        .macOS(.v26),
        .iOS(.v26),
        .tvOS(.v26),
        .watchOS(.v26),
        .visionOS(.v26)
    ],
    products: [
        // ============================================================
        // MARK: Core Shared Module
        // ============================================================
        .library(
            name: "WHATWG HTML Shared",
            targets: ["WHATWG HTML Shared"]
        ),

        // ============================================================
        // MARK: Data Types Module
        // ============================================================
        .library(
            name: "WHATWG HTML FormData",
            targets: ["WHATWG HTML FormData"]
        ),

        // ============================================================
        // MARK: Element Modules (Section-Based)
        // ============================================================
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

        // ============================================================
        // MARK: Attribute Modules (Usage-Based)
        // ============================================================
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

        // ============================================================
        // MARK: Convenience Umbrella Products
        // ============================================================
        .library(
            name: "WHATWG HTML Elements",
            targets: ["WHATWG HTML Elements"]
        ),
        .library(
            name: "WHATWG HTML Attributes",
            targets: ["WHATWG HTML Attributes"]
        ),

        // ============================================================
        // MARK: Main Umbrella (Everything)
        // ============================================================
        .library(
            name: "WHATWG HTML",
            targets: ["WHATWG HTML"]
        )
    ],
    traits: [
        .trait(
            name: "Foundation",
            description: "Foundation integration for WHATWG HTML"
        )
    ],
    dependencies: [
        .package(path: "../../swift-ietf/swift-rfc-2045"),
        .package(path: "../../swift-iso/swift-iso-8601"),
        .package(path: "../../swift-primitives/swift-standard-library-extensions"),
        .package(path: "../../swift-primitives/swift-geometry-primitives"),
        .package(path: "../../swift-primitives/swift-binary-primitives"),
        .package(path: "../../swift-primitives/swift-ascii-primitives")
    ],
    targets: [
        // ============================================================
        // MARK: Core Shared Target (Namespace + Protocols)
        // ============================================================
        .target(
            name: "WHATWG HTML Shared",
            dependencies: [
                .standards,
                .geometry,
                .incits41986
            ]
        ),

        // ============================================================
        // MARK: Data Types Target
        // ============================================================
        .target(
            name: "WHATWG HTML FormData",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLForms
            ]
        ),

        // ============================================================
        // MARK: Attribute Targets (Usage-Based)
        // ============================================================
        .target(
            name: "WHATWG HTML GlobalAttributes",
            dependencies: [
                .whatwgHTMLShared,
                .iso8601,
                .binary
            ]
        ),
        .target(
            name: "WHATWG HTML FormAttributes",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .rfc2045,
                .iso8601
            ]
        ),
        .target(
            name: "WHATWG HTML LinkAttributes",
            dependencies: [
                .whatwgHTMLShared,
                .rfc2045,
                .whatwgHTMLMediaAttributes
            ]
        ),
        .target(
            name: "WHATWG HTML MediaAttributes",
            dependencies: [
                .whatwgHTMLShared,
                .rfc2045
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
                .rfc2045
            ]
        ),

        // ============================================================
        // MARK: Element Targets (Section-Based, WHATWG Spec Aligned)
        // ============================================================

        // 4.1 The document element
        .target(
            name: "WHATWG HTML Document",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLAttributes
            ]
        ),

        // 4.2 Document metadata
        .target(
            name: "WHATWG HTML Metadata",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLLinkAttributes,
                .whatwgHTMLScriptAttributes,
                .whatwgHTMLFormAttributes  // For link element
            ]
        ),

        // 4.3 Sections
        .target(
            name: "WHATWG HTML Sections",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes
            ]
        ),

        // 4.4 Grouping content
        .target(
            name: "WHATWG HTML Grouping",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLFormAttributes  // For li element (Value)
    ]
        ),

        // 4.5 Text-level semantics
        .target(
            name: "WHATWG HTML TextSemantics",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLLinkAttributes,  // For <a> element
                .whatwgHTMLFormAttributes,  // For <a> element (Target), <data> element (Value)
                .whatwgHTMLMediaAttributes  // For <a> element (AttributionSrc)
    ]
        ),

        // 4.6 Links
        .target(
            name: "WHATWG HTML Links",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLLinkAttributes
            ]
        ),

        // 4.7 Edits
        .target(
            name: "WHATWG HTML Edits",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes
            ]
        ),

        // 4.8 Embedded content
        .target(
            name: "WHATWG HTML Embedded",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLMediaAttributes,
                .whatwgHTMLFormAttributes,
                .whatwgHTMLLinkAttributes,
                .whatwgHTMLScriptAttributes
            ]
        ),

        // 4.9 Tabular data
        .target(
            name: "WHATWG HTML Tables",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLTableAttributes,
                .whatwgHTMLMediaAttributes
            ]
        ),

        // 4.10 Forms
        .target(
            name: "WHATWG HTML Forms",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLFormAttributes,
                .whatwgHTMLTableAttributes,  // For textarea (Cols, Rows)
                .whatwgHTMLMediaAttributes,  // For input[type=image] (Src, Alt, Width, Height)
                .whatwgHTMLLinkAttributes  // For form element (Rel)
    ]
        ),

        // 4.11 Interactive elements
        .target(
            name: "WHATWG HTML Interactive",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLFormAttributes  // For details element (Name)
    ]
        ),

        // 4.12 Scripting
        .target(
            name: "WHATWG HTML Scripting",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLScriptAttributes,
                .whatwgHTMLFormAttributes,  // For slot element (Name)
                .whatwgHTMLMediaAttributes,  // For script element (AttributionSrc)
                .whatwgHTMLLinkAttributes  // For script element (ReferrerPolicy, Integrity, Crossorigin)
    ]
        ),

        // 4.13 Custom elements
        .target(
            name: "WHATWG HTML CustomElements",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes
            ]
        ),

        // Obsolete features
        .target(
            name: "WHATWG HTML Obsolete",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLTableAttributes,  // For Frameset (Cols, Rows)
                .whatwgHTMLFormAttributes,   // For Frame (Name)
                .whatwgHTMLMediaAttributes   // For Frame (Src, MarginHeight, MarginWidth)
    ]
        ),

        // ============================================================
        // MARK: Convenience Umbrella Targets
        // ============================================================

        // Umbrella for all elements
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
                .whatwgHTMLObsolete
            ]
        ),

        // Umbrella for all attributes
        .target(
            name: "WHATWG HTML Attributes",
            dependencies: [
                .whatwgHTMLGlobalAttributes,
                .whatwgHTMLFormAttributes,
                .whatwgHTMLLinkAttributes,
                .whatwgHTMLMediaAttributes,
                .whatwgHTMLTableAttributes,
                .whatwgHTMLScriptAttributes
            ]
        ),

        // ============================================================
        // MARK: Main Umbrella Target (Everything)
        // ============================================================
        .target(
            name: "WHATWG HTML",
            dependencies: [
                .whatwgHTMLShared,
                .whatwgHTMLFormData,
                .whatwgHTMLElements,
                .whatwgHTMLAttributes
            ]
        ),

        // ============================================================
        // MARK: Test Targets
        // ============================================================
        .testTarget(
            name: "WHATWG HTML Tests",
            dependencies: [
                "WHATWG HTML Shared",
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
        .enableExperimentalFeature("SuppressedAssociatedTypes"),
    ]

    let package: [SwiftSetting] = []

    target.swiftSettings = (target.swiftSettings ?? []) + ecosystem + package
}
