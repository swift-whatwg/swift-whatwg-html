import Testing
import WHATWG_HTML

@Suite struct `Loading Test` {
    @Test func `Loading attribute should be loading`() {
        #expect(WHATWG.HTML.Loading.Attribute.attribute == "loading")
    }

    @Test func `Loading convenience properties`() {
        #expect(WHATWG.HTML.Loading.Attribute.lazy.rawValue == "lazy")
        #expect(WHATWG.HTML.Loading.Attribute.eager.rawValue == "eager")
    }

    @Test func `Loading should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Loading.Attribute.allCases.count == 2)
        #expect(WHATWG.HTML.Loading.Attribute.allCases.contains(.lazy))
        #expect(WHATWG.HTML.Loading.Attribute.allCases.contains(.eager))
    }
}
