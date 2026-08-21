import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Part Test` {
    @Test func `Part attribute should be part`() {
        #expect(WHATWG.HTML.Part.Attribute.attribute == "part")
    }

    @Test func `Part description should reflect the initialized values`() {
        let singlePart = WHATWG.HTML.Part.Attribute("header")
        #expect(singlePart.description == "header")

        let multipleParts: WHATWG.HTML.Part.Attribute = ["header", "title"]
        #expect(multipleParts.description == "header title")

        let emptyPart = WHATWG.HTML.Part.Attribute("")
        #expect(emptyPart.description.isEmpty)
    }

    @Test func `Part can be initialized with single string or array of strings`() {
        let singlePart: WHATWG.HTML.Part.Attribute = "header"
        let arrayPart: WHATWG.HTML.Part.Attribute = "header"
        #expect(singlePart.description == arrayPart.description)

        let multipleParts: WHATWG.HTML.Part.Attribute = ["header", "title"]
        #expect(multipleParts.description == "header title")
    }
}
