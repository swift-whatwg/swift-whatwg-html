public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared


extension WHATWG.HTML.Audio.Element {
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
