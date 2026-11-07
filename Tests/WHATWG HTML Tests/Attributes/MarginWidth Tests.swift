import Testing
import WHATWG_HTML

enum `MarginWidth Tests` {}

extension `MarginWidth Tests` {
    @Suite struct `MarginWidth Test` {
        @Test func `MarginWidth attribute should be marginwidth`() {
            #expect(WHATWG.HTML.MarginWidth.Attribute.attribute == "marginwidth")
        }

        @Test func `MarginWidth should support integer literal`() {
            let marginWidth: WHATWG.HTML.MarginWidth.Attribute = 20
            #expect(marginWidth.rawValue == "20")
        }
    }
}
