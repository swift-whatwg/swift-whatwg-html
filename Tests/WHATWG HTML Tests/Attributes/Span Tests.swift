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
}
