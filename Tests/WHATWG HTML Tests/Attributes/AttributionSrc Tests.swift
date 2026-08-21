import Testing
import WHATWG_HTML

@Suite struct `AttributionSrc Test` {
    @Test func `AttributionSrc attribute should be attributionsrc`() {
        #expect(WHATWG.HTML.AttributionSrc.Attribute.attribute == "attributionsrc")
    }

    @Test func `AttributionSrc should support boolean initialization`() {
        let attrTrue = WHATWG.HTML.AttributionSrc.Attribute(true)
        #expect(attrTrue.shouldInclude == true)

        let attrFalse = WHATWG.HTML.AttributionSrc.Attribute(false)
        #expect(attrFalse.shouldInclude == false)
    }

    @Test func `AttributionSrc should support URL initialization`() {
        let attr = WHATWG.HTML.AttributionSrc.Attribute("https://example.com/register")
        #expect(attr.shouldInclude == true)
        #expect(attr.description == "https://example.com/register")
    }

    @Test func `AttributionSrc should support boolean literal`() {
        let attrTrue: WHATWG.HTML.AttributionSrc.Attribute = true
        #expect(attrTrue.shouldInclude == true)

        let attrFalse: WHATWG.HTML.AttributionSrc.Attribute = false
        #expect(attrFalse.shouldInclude == false)
    }

    @Test func `AttributionSrc should support string literal`() {
        let attr: WHATWG.HTML.AttributionSrc.Attribute = "https://analytics.example.com"
        #expect(attr.description == "https://analytics.example.com")
    }
}
