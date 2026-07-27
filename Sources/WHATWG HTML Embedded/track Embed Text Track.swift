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

public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

/// Represents an HTML track element (`<track>`), which is used as a child of the media elements
/// `<audio>` and `<video>` to specify timed text tracks.
///
/// The `Track` struct provides a type-safe way to create HTML `<track>` elements for
/// displaying subtitles, captions, chapter titles, or other text synchronized with media playback.
///
/// ## Example
///
/// ```swift
/// video {
///     source(src: "sample.mp4", type: "video/mp4")
///     track(kind: .subtitles,
///           src: "sample.vtt",
///           srclang: "en",
///           label: "English Subtitles")
/// }
/// ```
///
/// ## Best Practices
///
/// - Always provide a `src` attribute pointing to a valid WebVTT (.vtt) file
/// - Specify the `kind` attribute to indicate how the text track should be used
/// - Include the `srclang` attribute for subtitle tracks to indicate the language
/// - Use the `label` attribute to provide a user-friendly name for the track
/// - Set the `default` attribute on one track if you want it enabled by default
/// - A media element cannot have more than one track with the same `kind`, `srclang`, and `label`
///
public struct Track: WHATWG_HTML.Element.`Protocol` {
    /// Indicates that the track should be enabled by default unless the user's preferences indicate otherwise
    public var `default`: Default?

    /// How the text track is meant to be used (subtitles, captions, chapters, or metadata)
    public var kind: Kind?

    /// A user-readable title of the text track which is used by the browser when listing available text tracks
    public var label: Label?

    /// Address of the track (.vtt file)
    public var src: Src

    /// Language of the track text data (BCP 47 language tag)
    public var srclang: SrcLang?

    /// Creates a new Track element.
    ///
    /// - Parameters:
    ///   - kind: How the text track is meant to be used
    ///   - src: Address of the WebVTT (.vtt) file
    ///   - srclang: Language of the track text data
    ///   - label: User-readable title of the text track
    ///   - defaultTrack: Whether this track should be enabled by default
    public init(
        default: Default? = nil,
        kind: Kind? = nil,
        src: Src,
        srclang: SrcLang? = nil,
        label: Label? = nil
    ) {
        self.default = `default`
        self.kind = kind
        self.src = src
        self.srclang = srclang
        self.label = label
    }
}

extension Track {
    /// The HTML tag name
    @inlinable public static var tag: String { "track" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .nothing)
}
