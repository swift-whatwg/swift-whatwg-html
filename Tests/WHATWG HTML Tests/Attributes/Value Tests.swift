import Testing
import WHATWG_HTML

@Suite struct `Value Test` {
    @Test func `Value attribute should be value`() {
        #expect(WHATWG.HTML.Value.Attribute<String>.attribute == "value")
    }

    @Test func `Value should support string literals`() {
        let stringValue: WHATWG.HTML.Value.Attribute<String> = "test"
        #expect(stringValue.value == "test")
    }

    @Test func `Value should support integer literals`() {
        let intValue: WHATWG.HTML.Value.Attribute<Int> = 42
        #expect(intValue.value == 42)
    }
}
