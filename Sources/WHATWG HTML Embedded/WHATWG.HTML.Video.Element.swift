public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Video {

    public struct Element: WHATWG.HTML.Element {

        public var src: WHATWG.HTML.Src.Attribute?

        public var controls: WHATWG.HTML.Controls.Attribute?

        public var autoplay: WHATWG.HTML.Autoplay.Attribute?

        public var poster: WHATWG.HTML.Poster.Attribute?

        public var loop: WHATWG.HTML.Loop.Attribute?

        public var muted: WHATWG.HTML.Muted.Attribute?

        public var width: WHATWG.HTML.Width.Attribute?

        public var height: WHATWG.HTML.Height.Attribute?

        public var preload: WHATWG.HTML.Preload.Attribute?

        public var playsinline: WHATWG.HTML.Playsinline.Attribute?

        public var crossorigin: WHATWG.HTML.Crossorigin.Attribute?

        public var controlslist: WHATWG.HTML.ControlsList.Attribute?

        public var disablepictureinpicture: WHATWG.HTML.DisablePictureInPicture.Attribute?

        public var disableremoteplayback: WHATWG.HTML.DisableRemotePlayback.Attribute?

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

    @inlinable public static var tag: String { "video" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .embedded, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
