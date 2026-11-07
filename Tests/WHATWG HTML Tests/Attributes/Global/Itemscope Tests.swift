import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

enum `Itemscope Tests` {}

extension `Itemscope Tests` {
    @Suite struct `Itemscope Test` {
        @Test func `Itemscope attribute should be itemscope`() {
            #expect(WHATWG.HTML.Itemscope.Attribute.attribute == "itemscope")
        }
    }
}
