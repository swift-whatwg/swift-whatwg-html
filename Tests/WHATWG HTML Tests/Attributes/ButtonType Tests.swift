import Testing
import WHATWG_HTML

private typealias ButtonTypeAttribute = WHATWG.HTML.Button.`Type`.Attribute

@Suite struct `ButtonType Test` {
    @Test func `ButtonType attribute should be type`() {
        #expect(ButtonTypeAttribute.attribute == "type")
    }

    @Test func `ButtonType convenience properties`() {
        #expect(ButtonTypeAttribute.submit.rawValue == "submit")
        #expect(ButtonTypeAttribute.reset.rawValue == "reset")
        #expect(ButtonTypeAttribute.button.rawValue == "button")
    }
}
