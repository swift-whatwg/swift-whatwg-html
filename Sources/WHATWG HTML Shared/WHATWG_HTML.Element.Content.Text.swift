//
//  File.swift
//  swift-whatwg-html
//
//  Created by Coen ten Thije Boonkkamp on 05/12/2025.
//

import ASCII_Primitives

extension WHATWG_HTML.Element.Content {
    /// Represents text content within an element.
    ///
    /// Text in the context of content models means either nothing, or Text nodes.
    /// Text is sometimes used as a content model on its own, but is also phrasing
    /// content, and can be inter-element whitespace.
    public enum Text: Sendable, Hashable {
        /// No text content.
        case empty

        /// Inter-element whitespace: empty Text nodes or Text nodes consisting
        /// of just sequences of ASCII whitespace characters.
        ///
        /// Inter-element whitespace, comment nodes, and processing instruction
        /// nodes must be ignored when establishing whether an element's contents
        /// match the element's content model.
        case `inter-element whitespace`

        /// Significant text content (not just whitespace).
        case content(String)
    }

    /// ASCII whitespace characters as defined by the WHATWG HTML specification.
    ///
    /// These are: U+0009 TAB, U+000A LF, U+000C FF, U+000D CR, U+0020 SPACE
    public static let whitespaces: Set<UInt8> = [
        UInt8.ascii.htab, UInt8.ascii.lf, UInt8.ascii.ff, UInt8.ascii.cr, UInt8.ascii.sp,
    ]
}
