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

@_exported public import WHATWG

extension WHATWG {
    /// WHATWG HTML Living Standard namespace
    ///
    /// This namespace contains types representing HTML elements and attributes
    /// as defined in the WHATWG HTML Living Standard, nested under the
    /// ``WHATWG`` authority root.
    ///
    /// ## Specification
    ///
    /// [WHATWG HTML Living Standard](https://html.spec.whatwg.org/)
    ///
    /// ## Example
    ///
    /// ```swift
    /// import WHATWG_HTML
    ///
    /// let form = WHATWG.HTML.Element.Form(
    ///     action: .relative("/submit"),
    ///     method: .post
    /// )
    /// ```
    public enum HTML {}
}
