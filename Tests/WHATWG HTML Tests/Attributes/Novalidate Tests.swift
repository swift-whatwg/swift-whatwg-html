import Testing
import WHATWG_HTML

@Suite struct `Novalidate Test` {
    @Test func `Novalidate attribute should be novalidate`() {
        #expect(WHATWG.HTML.Novalidate.Attribute.attribute == "novalidate")
    }
}
