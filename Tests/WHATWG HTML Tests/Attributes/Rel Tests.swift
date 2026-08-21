import Testing
import WHATWG_HTML

@Suite struct `Rel Test` {
    @Test func `Rel attribute should be rel`() {
        #expect(WHATWG.HTML.Rel.Attribute.attribute == "rel")
    }

    @Test func `Rel convenience properties`() {
        #expect(WHATWG.HTML.Rel.Attribute.stylesheet.rawValue == "stylesheet")
        #expect(WHATWG.HTML.Rel.Attribute.icon.rawValue == "icon")
        #expect(WHATWG.HTML.Rel.Attribute.canonical.rawValue == "canonical")
        #expect(WHATWG.HTML.Rel.Attribute.external.rawValue == "external")
        #expect(WHATWG.HTML.Rel.Attribute.noopener.rawValue == "noopener")
        #expect(WHATWG.HTML.Rel.Attribute.noreferrer.rawValue == "noreferrer")
        #expect(WHATWG.HTML.Rel.Attribute.preload.rawValue == "preload")
    }

    @Test func `Rel array literal support`() {
        let rel: WHATWG.HTML.Rel.Attribute = ["external", "noopener", "noreferrer"]
        #expect(rel.rawValue == "external noopener noreferrer")
    }

    @Test func `Rel secure external convenience`() {
        #expect(WHATWG.HTML.Rel.Attribute.secureExternal.rawValue.contains("external"))
        #expect(WHATWG.HTML.Rel.Attribute.secureExternal.rawValue.contains("noopener"))
        #expect(WHATWG.HTML.Rel.Attribute.secureExternal.rawValue.contains("noreferrer"))
    }
}
