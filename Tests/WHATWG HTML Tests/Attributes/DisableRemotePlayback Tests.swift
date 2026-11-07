import Testing
import WHATWG_HTML

enum `DisableRemotePlayback Tests` {}

extension `DisableRemotePlayback Tests` {
    @Suite struct `DisableRemotePlayback Test` {
        @Test func `DisableRemotePlayback attribute should be disableremoteplayback`() {
            #expect(WHATWG.HTML.DisableRemotePlayback.Attribute.attribute == "disableremoteplayback")
        }
    }
}
