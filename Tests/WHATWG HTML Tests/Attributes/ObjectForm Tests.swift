import Testing
import WHATWG_HTML

@Suite struct `ObjectForm Test` {
    @Test func `ObjectForm attribute should be form`() {
        #expect(WHATWG.HTML.ExternalObject.Form.Attribute.attribute == "form")
    }
}
