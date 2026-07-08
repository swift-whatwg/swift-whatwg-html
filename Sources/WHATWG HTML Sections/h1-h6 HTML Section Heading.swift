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

// MARK: - HTML Section Heading Elements
// <h1>–<h6>: The HTML Section Heading elements
//
// The <h1> to <h6> HTML elements represent six levels of section headings.
// <h1> is the highest section level and <h6> is the lowest.
// By default, all heading elements create a block-level box in the layout,
// starting on a new line and taking up the full width available in their containing block.
//
// These elements only include the global attributes.

// MARK: - H1 Element
public struct H1: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

extension H1 {
    @inlinable public static var tag: String { "h1" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .heading, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}

// MARK: - H2 Element
public struct H2: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

extension H2 {
    @inlinable public static var tag: String { "h2" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .heading, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}

// MARK: - H3 Element
public struct H3: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

extension H3 {
    @inlinable public static var tag: String { "h3" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .heading, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}

// MARK: - H4 Element
public struct H4: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

extension H4 {
    @inlinable public static var tag: String { "h4" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .heading, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}

// MARK: - H5 Element
public struct H5: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

extension H5 {
    @inlinable public static var tag: String { "h5" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .heading, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}

// MARK: - H6 Element
public struct H6: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

extension H6 {
    @inlinable public static var tag: String { "h6" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .heading, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}
