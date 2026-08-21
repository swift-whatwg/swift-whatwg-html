import Testing
import WHATWG_HTML

@Suite struct `FontSize Test` {
    @Test func `FontSize attribute should be size`() {
        #expect(WHATWG.HTML.Font.Size.Attribute.attribute == "size")
    }

    @Test func `FontSize should support numeric initialization`() {
        let fontSize = WHATWG.HTML.Font.Size.Attribute(numericValue: 5)
        #expect(fontSize.rawValue == "5")
    }

    @Test func `FontSize should support relative initialization`() {
        let positiveRelative = WHATWG.HTML.Font.Size.Attribute(relativeValue: 2)
        #expect(positiveRelative.rawValue == "+2")

        let negativeRelative = WHATWG.HTML.Font.Size.Attribute(relativeValue: -1)
        #expect(negativeRelative.rawValue == "-1")
    }

    @Test func `FontSize should support integer literal`() {
        let fontSize: WHATWG.HTML.Font.Size.Attribute = 3
        #expect(fontSize.rawValue == "3")
    }
}
