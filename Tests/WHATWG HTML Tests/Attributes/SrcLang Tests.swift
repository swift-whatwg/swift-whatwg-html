import Testing
import WHATWG_HTML

enum `SrcLang Tests` {}

extension `SrcLang Tests` {
    @Suite struct `SrcLang Test` {
        @Test func `SrcLang attribute should be srclang`() {
            #expect(WHATWG.HTML.SrcLang.Attribute.attribute == "srclang")
        }
    }
}
