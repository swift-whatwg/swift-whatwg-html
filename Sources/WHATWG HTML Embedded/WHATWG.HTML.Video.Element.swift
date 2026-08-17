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

public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Video {
    /// Represents an HTML video element (`<video>`), which embeds a media player that supports video playback into a document.
    ///
    /// The `Video` struct provides a type-safe way to create HTML video elements with various attributes for controlling playback, appearance, and behavior.
    ///
    /// ## Example
    ///
    /// ```swift
    /// video {
    ///     source(src: "video.mp4", type: "video/mp4")
    ///     source(src: "video.webm", type: "video/webm")
    ///     "Your browser doesn't support HTML video."
    /// }
    /// ```
    ///
    /// With additional attributes:
    ///
    /// ```swift
    /// video(
    ///     controls: true,
    ///     autoplay: true,
    ///     muted: true,
    ///     poster: "thumbnail.jpg",
    ///     width: 640,
    ///     height: 360
    /// ) {
    ///     source(src: "video.mp4", type: "video/mp4")
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Always provide multiple source formats for better browser compatibility
    /// - Include fallback content for browsers that don't support video
    /// - Consider providing captions and transcripts for accessibility
    /// - Set width and height attributes to avoid layout shifts during loading
    /// - Use the `poster` attribute to provide a preview image
    /// - Consider setting `preload="metadata"` for better performance on mobile devices
    /// - For autoplay videos, use the `muted` attribute to improve autoplay compatibility
    ///
    /// ## Accessibility Considerations
    ///
    /// - Videos should include captions for people with hearing impairments
    /// - Consider providing a transcript for better accessibility
    /// - Make sure video controls are accessible via keyboard
    /// - Videos with important visual information should include audio descriptions
    ///
    public struct Element: WHATWG.HTML.Element {
        /// The URL of the video to embed
        public var src: WHATWG.HTML.Src.Attribute?

        /// Whether to display playback controls
        public var controls: WHATWG.HTML.Controls.Attribute?

        /// Whether to automatically begin playback
        public var autoplay: WHATWG.HTML.Autoplay.Attribute?

        /// URL for an image to be shown while the video is downloading
        public var poster: WHATWG.HTML.Poster.Attribute?

        /// Whether to automatically seek back to the start after reaching the end
        public var loop: WHATWG.HTML.Loop.Attribute?

        /// Whether to initially silence the audio
        public var muted: WHATWG.HTML.Muted.Attribute?

        /// The width of the video's display area in CSS pixels
        public var width: WHATWG.HTML.Width.Attribute?

        /// The height of the video's display area in CSS pixels
        public var height: WHATWG.HTML.Height.Attribute?

        /// Provides a hint about what content to preload
        public var preload: WHATWG.HTML.Preload.Attribute?

        /// Whether to play the video inline rather than fullscreen (especially important for iOS)
        public var playsinline: WHATWG.HTML.Playsinline.Attribute?

        /// How to handle cross-origin requests
        public var crossorigin: WHATWG.HTML.Crossorigin.Attribute?

        /// Helps the browser select what controls to show when controls are enabled
        public var controlslist: WHATWG.HTML.ControlsList.Attribute?

        /// Prevents the browser from suggesting Picture-in-Picture
        public var disablepictureinpicture: WHATWG.HTML.DisablePictureInPicture.Attribute?

        /// Disables remote playback capabilities
        public var disableremoteplayback: WHATWG.HTML.DisableRemotePlayback.Attribute?

        /// Creates a new Video element with the specified attributes.
        ///
        /// - Parameters:
        ///   - src: The URL of the video to embed
        ///   - controls: Whether to display playback controls
        ///   - autoplay: Whether to automatically begin playback
        ///   - poster: URL for an image to be shown while the video is downloading
        ///   - loop: Whether to automatically seek back to the start after reaching the end
        ///   - muted: Whether to initially silence the audio
        ///   - width: The width of the video's display area in CSS pixels
        ///   - height: The height of the video's display area in CSS pixels
        ///   - preload: Provides a hint about what content to preload
        ///   - playsinline: Whether to play the video inline rather than fullscreen
        ///   - crossorigin: How to handle cross-origin requests
        ///   - controlslist: Helps the browser select what controls to show when controls are enabled
        ///   - disablepictureinpicture: Prevents the browser from suggesting Picture-in-Picture
        ///   - disableremoteplayback: Disables remote playback capabilities, typically source elements or fallback content
        public init(
            src: WHATWG.HTML.Src.Attribute? = nil,
            controls: WHATWG.HTML.Controls.Attribute? = nil,
            autoplay: WHATWG.HTML.Autoplay.Attribute? = nil,
            poster: WHATWG.HTML.Poster.Attribute? = nil,
            loop: WHATWG.HTML.Loop.Attribute? = nil,
            muted: WHATWG.HTML.Muted.Attribute? = nil,
            width: WHATWG.HTML.Width.Attribute? = nil,
            height: WHATWG.HTML.Height.Attribute? = nil,
            preload: WHATWG.HTML.Preload.Attribute? = nil,
            playsinline: WHATWG.HTML.Playsinline.Attribute? = nil,
            crossorigin: WHATWG.HTML.Crossorigin.Attribute? = nil,
            controlslist: WHATWG.HTML.ControlsList.Attribute? = nil,
            disablepictureinpicture: WHATWG.HTML.DisablePictureInPicture.Attribute? = nil,
            disableremoteplayback: WHATWG.HTML.DisableRemotePlayback.Attribute? = nil
        ) {
            self.src = src
            self.controls = controls
            self.autoplay = autoplay
            self.poster = poster
            self.loop = loop
            self.muted = muted
            self.width = width
            self.height = height
            self.preload = preload
            self.playsinline = playsinline
            self.crossorigin = crossorigin
            self.controlslist = controlslist
            self.disablepictureinpicture = disablepictureinpicture
            self.disableremoteplayback = disableremoteplayback

        }
    }
}

extension WHATWG.HTML.Video.Element {
    /// The HTML tag name for the video element
    @inlinable public static var tag: String { "video" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .embedded, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
