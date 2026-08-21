import Testing
import WHATWG_HTML

@Suite struct `Headers Test` {
    @Test func `Headers attribute should be headers`() {
        #expect(WHATWG.HTML.Headers.Attribute.attribute == "headers")
    }

    @Test func `Headers array literal support`() {
        let headers: WHATWG.HTML.Headers.Attribute = ["header1", "header2", "header3"]
        #expect(headers.rawValue == "header1 header2 header3")
    }
}
