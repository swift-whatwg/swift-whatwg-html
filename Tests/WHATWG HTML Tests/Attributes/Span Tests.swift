import Testing
import WHATWG_HTML

@Suite struct `Span Test` {
    @Test func `Span attribute should be span`() {
        #expect(WHATWG.HTML.Span.Attribute.attribute == "span")
    }

    @Test func `Span should support integer literal`() {
        let span: WHATWG.HTML.Span.Attribute = 3
        #expect(span.rawValue == "3")
    }

    @Test(arguments: ["3", " 3", "+3", "3px", "1000"])
    func `Span string value is parsed with the non-negative integer rules`(_ value: String) {
        let expected = value == "1000" ? 1000 : 3
        #expect(WHATWG.HTML.Span.Attribute(value: value).width == expected)
    }

    @Test(arguments: ["0", "-3", "-0", "1001", "99999999999999999999999", "", "abc", "\u{0663}"])
    func `Span string value outside 1 to 1000 or unparsable falls back to 1`(_ value: String) {
        #expect(WHATWG.HTML.Span.Attribute(value: value).width == 1)
    }
}
