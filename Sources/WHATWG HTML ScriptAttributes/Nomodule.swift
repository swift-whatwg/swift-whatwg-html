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

@dynamicMemberLookup public struct Nomodule: WHATWG_HTML.BooleanAttribute {

    public var rawValue: Bool

    public init(value: Bool = true) { self.rawValue = value }
}

extension Nomodule {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "nomodule" }
}
