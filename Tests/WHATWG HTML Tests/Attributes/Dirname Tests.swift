import Testing
import WHATWG_HTML

@Suite struct `Dirname Test` {
    @Test func `Dirname attribute should be dirname`() {
        #expect(WHATWG.HTML.Dirname.Attribute.attribute == "dirname")
    }

    @Test func `Dirname should support initialization based on element name`() {
        let dirname = WHATWG.HTML.Dirname.Attribute(basedOn: "comment")
        #expect(dirname.rawValue == "comment-direction")

        let dirnameCustomSuffix = WHATWG.HTML.Dirname.Attribute(basedOn: "message", suffix: "-dir")
        #expect(dirnameCustomSuffix.rawValue == "message-dir")
    }
}
