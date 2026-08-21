import Testing
import WHATWG_HTML

@Suite struct `For Test` {
    @Test func `For attribute should be for`() {
        #expect(WHATWG.HTML.For.Attribute.attribute == "for")
    }

    @Test func `For should support array literal`() {
        let forAttribute: WHATWG.HTML.For.Attribute = ["input1", "input2"]
        #expect(forAttribute.rawValue == "input1 input2")
    }
}
