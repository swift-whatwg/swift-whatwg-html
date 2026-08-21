import Testing
import WHATWG_HTML

@Suite struct `SrcLang Test` {
    @Test func `SrcLang attribute should be srclang`() {
        #expect(WHATWG.HTML.SrcLang.Attribute.attribute == "srclang")
    }
}
