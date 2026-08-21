import Testing
import WHATWG_HTML

@Suite struct `Capture Test` {
    @Test func `Capture attribute should be capture`() {
        #expect(WHATWG.HTML.Capture.Attribute.attribute == "capture")
    }

    @Test func `Capture convenience properties`() {
        #expect(WHATWG.HTML.Capture.Attribute.user.rawValue == "user")
        #expect(WHATWG.HTML.Capture.Attribute.environment.rawValue == "environment")
    }
}
