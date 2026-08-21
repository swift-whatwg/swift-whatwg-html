import Testing
import WHATWG_HTML

@Suite struct `FetchPriority Test` {
    @Test func `FetchPriority attribute should be fetchpriority`() {
        #expect(WHATWG.HTML.FetchPriority.Attribute.attribute == "fetchpriority")
    }

    @Test func `FetchPriority convenience properties`() {
        #expect(WHATWG.HTML.FetchPriority.Attribute.high.rawValue == "high")
        #expect(WHATWG.HTML.FetchPriority.Attribute.low.rawValue == "low")
        #expect(WHATWG.HTML.FetchPriority.Attribute.auto.rawValue == "auto")
    }

    @Test func `FetchPriority should conform to CaseIterable`() {
        #expect(WHATWG.HTML.FetchPriority.Attribute.allCases.count == 3)
        #expect(WHATWG.HTML.FetchPriority.Attribute.allCases.contains(.high))
        #expect(WHATWG.HTML.FetchPriority.Attribute.allCases.contains(.low))
        #expect(WHATWG.HTML.FetchPriority.Attribute.allCases.contains(.auto))
    }
}
