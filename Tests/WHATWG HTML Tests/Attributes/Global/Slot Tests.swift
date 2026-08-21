import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Slot Test` {
    @Test func `Slot attribute should be slot`() {
        #expect(WHATWG.HTML.Slot.Attribute.attribute == "slot")
    }

    @Test func `Slot should store and return its value`() {
        let slot = WHATWG.HTML.Slot.Attribute("header")
        #expect(slot.rawValue == "header")
    }

    @Test func `Slot description should return its value`() {
        let slot = WHATWG.HTML.Slot.Attribute("footer")
        #expect(slot.description == "footer")
    }

    @Test func `Slot should be initializable with string literal`() {
        let slot: WHATWG.HTML.Slot.Attribute = "sidebar"
        #expect(slot.rawValue == "sidebar")
    }
}
