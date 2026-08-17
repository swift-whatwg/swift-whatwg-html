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

public import WHATWG_HTML_Shared

extension WHATWG.HTML.PlainText {
    /// Represents the obsolete `<plaintext>` element.
    @available(
        *,
        deprecated,
        message: "The plaintext element is obsolete. Use the pre element or the text/plain MIME type instead."
    ) public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

@available(
    *,
    deprecated,
    message: "The plaintext element is obsolete. Use the pre element or the text/plain MIME type instead."
)
extension WHATWG.HTML.PlainText.Element {
    @inlinable public static var tag: String { "plaintext" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
