import Testing
import WHATWG_HTML

private typealias OrderedListTypeAttribute = WHATWG.HTML.OrderedList.`Type`.Attribute

@Suite struct `ListType Test` {
    @Test func `ListType attribute should be type`() {
        #expect(OrderedListTypeAttribute.attribute == "type")
    }

    @Test func `ListType should have predefined values`() {
        #expect(OrderedListTypeAttribute.lowerAlpha.rawValue == "a")
        #expect(OrderedListTypeAttribute.upperAlpha.rawValue == "A")
        #expect(OrderedListTypeAttribute.lowerRoman.rawValue == "i")
        #expect(OrderedListTypeAttribute.upperRoman.rawValue == "I")
        #expect(OrderedListTypeAttribute.decimal.rawValue == "1")
    }
}
