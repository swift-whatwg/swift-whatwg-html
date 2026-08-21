import Testing
import WHATWG_HTML

@Suite struct `Playsinline Test` {
    @Test func `Playsinline attribute should be playsinline`() {
        #expect(WHATWG.HTML.Playsinline.Attribute.attribute == "playsinline")
    }
}
