public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Audio {

    public struct Element: WHATWG.HTML.Element {

        public var src: WHATWG.HTML.Src.Attribute?

        public var controls: WHATWG.HTML.Controls.Attribute?

        public var autoplay: WHATWG.HTML.Autoplay.Attribute?

        public var loop: WHATWG.HTML.Loop.Attribute?

        public var muted: WHATWG.HTML.Muted.Attribute?

        public var preload: WHATWG.HTML.Preload.Attribute?

        public var crossorigin: WHATWG.HTML.Crossorigin.Attribute?

        public var controlslist: WHATWG.HTML.ControlsList.Attribute?

        public var disableremoteplayback: WHATWG.HTML.DisableRemotePlayback.Attribute?

        public init(
            src: WHATWG.HTML.Src.Attribute? = nil,
            controls: WHATWG.HTML.Controls.Attribute? = nil,
            autoplay: WHATWG.HTML.Autoplay.Attribute? = nil,
            loop: WHATWG.HTML.Loop.Attribute? = nil,
            muted: WHATWG.HTML.Muted.Attribute? = nil,
            preload: WHATWG.HTML.Preload.Attribute? = nil,
            crossorigin: WHATWG.HTML.Crossorigin.Attribute? = nil,
            controlslist: WHATWG.HTML.ControlsList.Attribute? = nil,
            disableremoteplayback: WHATWG.HTML.DisableRemotePlayback.Attribute? = nil
        ) {
            self.src = src
            self.controls = controls
            self.autoplay = autoplay
            self.loop = loop
            self.muted = muted
            self.preload = preload
            self.crossorigin = crossorigin
            self.controlslist = controlslist
            self.disableremoteplayback = disableremoteplayback

        }
    }
}

extension WHATWG.HTML.Audio.Element {
    @inlinable public static var tag: String { "audio" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .embedded,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}

extension WHATWG.HTML.Audio.Element {

    public enum Preload: String, Sendable {

        case none

        case metadata

        case auto
    }

    public struct ControlsList: Sendable, Hashable {

        public var nodownload: Bool

        public var nofullscreen: Bool

        public var noremoteplayback: Bool

        public init(
            nodownload: Bool = false,
            nofullscreen: Bool = false,
            noremoteplayback: Bool = false
        ) {
            self.nodownload = nodownload
            self.nofullscreen = nofullscreen
            self.noremoteplayback = noremoteplayback
        }
    }
}

extension WHATWG.HTML.Audio.Element.ControlsList {

    public var description: String {
        var values: [String] = []

        if nodownload { values.append("nodownload") }
        if nofullscreen { values.append("nofullscreen") }
        if noremoteplayback { values.append("noremoteplayback") }

        return values.joined(separator: " ")
    }
}
