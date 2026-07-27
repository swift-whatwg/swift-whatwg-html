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

/// Represents an HTML `<small>` element, which renders side-comments and small print like copyright and legal text.
///
/// The `Small` element is used for side-comments and small print, such as copyright and legal text, independent
/// of its styled presentation. By default, browsers typically render text within this element one font-size smaller.
///
/// ## Example
///
/// ```swift
/// p {
///     "This is the first sentence."
///     small {
///         "This whole sentence is in small letters."
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Use for side comments, disclaimers, legal text, and copyright notices
/// - Don't use solely for styling text in a smaller font size (use CSS for that purpose)
/// - Consider whether semantic meaning or presentation is your primary goal
///
/// ## Notes
///
/// Although the `<small>` element may appear to violate the principle of separation between structure and
/// presentation (like `<b>` and `<i>`), it is valid in HTML when used for its semantic purpose rather than
/// just visual styling.
///
public struct Small: WHATWG_HTML.Element.`Protocol` {

    /// Creates a new Small element with the specified content.
    public init(

        )
    {

    }
}

extension Small {
    /// The HTML tag name
    @inlinable public static var tag: String { "small" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}
