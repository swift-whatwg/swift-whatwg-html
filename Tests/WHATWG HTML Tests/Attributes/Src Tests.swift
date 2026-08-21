import Testing
import WHATWG_HTML

@Suite struct `Src Test` {
    @Test func `Src attribute should be src`() {
        #expect(WHATWG.HTML.Src.Attribute.attribute == "src")
    }
}
