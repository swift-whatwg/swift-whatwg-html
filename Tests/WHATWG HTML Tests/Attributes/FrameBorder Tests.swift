import Testing
import WHATWG_HTML

@Suite struct `FrameBorder Test` {
    @Test func `FrameBorder attribute should be frameborder`() {
        #expect(WHATWG.HTML.FrameBorder.Attribute.attribute == "frameborder")
    }

    @Test func `FrameBorder should support integer literal`() {
        let frameBorder: WHATWG.HTML.FrameBorder.Attribute = 1
        #expect(frameBorder.rawValue == "1")
    }
}
