import Testing
import WHATWG_HTML

@Suite struct `DisableRemotePlayback Test` {
    @Test func `DisableRemotePlayback attribute should be disableremoteplayback`() {
        #expect(WHATWG.HTML.DisableRemotePlayback.Attribute.attribute == "disableremoteplayback")
    }
}
