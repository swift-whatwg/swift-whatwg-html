// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

public import RFC_2045
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Attribute {
    /// Represents the HTML type attribute for the `<script>` element.
    ///
    /// The `type` attribute indicates the type of script represented. It can be either:
    /// - A MIME type for data or non-JavaScript content (e.g., "application/json")
    /// - A special keyword for JavaScript variants ("module", "importmap", "speculationrules")
    /// - Omitted or empty for classic JavaScript scripts (default behavior)
    ///
    /// ## Special Keywords
    ///
    /// - `module`: Indicates the code is a JavaScript module
    /// - `importmap`: Indicates the body contains an import map
    /// - `speculationrules`: Indicates the body contains speculation rules
    ///
    /// ## MIME Types
    ///
    /// For embedding data blocks, use standard MIME types:
    /// - `application/json`: JSON data
    /// - `text/plain`: Plain text data
    /// - Other valid MIME types as needed
    ///
    /// ## Examples
    ///
    /// ```html
    /// <!-- Classic JavaScript (default, no type attribute needed) -->
    /// <script src="script.js"></script>
    ///
    /// <!-- JavaScript Module -->
    /// <script type="module" src="module.js"></script>
    ///
    /// <!-- Import Map -->
    /// <script type="importmap">
    ///   {
    ///     "imports": {
    ///       "lodash": "/node_modules/lodash-es/lodash.js"
    ///     }
    ///   }
    /// </script>
    ///
    /// <!-- JSON Data Block -->
    /// <script type="application/json" id="data">
    ///   {"user": "John", "id": 123}
    /// </script>
    /// ```
    @dynamicMemberLookup public struct ScriptType: WHATWG.HTML.StringAttribute {

        /// The script type value
        public var rawValue: String

        /// Initialize with a string value
        public init(value: String) { self.rawValue = value }

        /// Initialize with a MIME content type
        public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
    }
}

extension WHATWG.HTML.Attribute.ScriptType {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }
}

// MARK: - Special Keywords

extension WHATWG.HTML.Attribute.ScriptType {
    /// JavaScript module
    public static let module = WHATWG.HTML.Attribute.ScriptType("module")

    /// Import map
    public static let importmap = WHATWG.HTML.Attribute.ScriptType("importmap")

    /// Speculation rules
    public static let speculationrules = WHATWG.HTML.Attribute.ScriptType("speculationrules")
}

// MARK: - Common MIME Types

extension WHATWG.HTML.Attribute.ScriptType {
    /// application/json - for JSON data blocks
    public static let json = WHATWG.HTML.Attribute.ScriptType(contentType: .applicationJSON)

    /// text/plain - for plain text data blocks
    public static let textPlain = WHATWG.HTML.Attribute.ScriptType(contentType: .textPlain)
}

// MARK: - RFC 2045 ContentType Support

extension RFC_2045.ContentType {
    /// application/json
    public static let applicationJSON = RFC_2045.ContentType(
        __unchecked: (),
        type: "application",
        subtype: "json"
    )
}
