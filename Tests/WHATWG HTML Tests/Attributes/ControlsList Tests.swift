import Testing
import WHATWG_HTML

@Suite struct `ControlsList Test` {
    @Test func `ControlsList attribute should be controlslist`() {
        #expect(WHATWG.HTML.ControlsList.Attribute.attribute == "controlslist")
    }

    @Test func `ControlsList should have predefined values`() {
        #expect(WHATWG.HTML.ControlsList.Attribute.nodownload.rawValue == "nodownload")
        #expect(WHATWG.HTML.ControlsList.Attribute.nofullscreen.rawValue == "nofullscreen")
        #expect(WHATWG.HTML.ControlsList.Attribute.noremoteplayback.rawValue == "noremoteplayback")
    }

    @Test func `ControlsList should support combining values`() {
        let combined = WHATWG.HTML.ControlsList.Attribute.combine([.nodownload, .nofullscreen])
        #expect(combined.rawValue == "nodownload nofullscreen")
    }
}
