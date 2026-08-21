import Testing
import WHATWG_HTML

private typealias ScriptTypeAttribute = WHATWG.HTML.Script.`Type`.Attribute

@Suite struct `ScriptType Test` {
    @Test func `ScriptType attribute should be type`() {
        #expect(ScriptTypeAttribute.attribute == "type")
    }

    @Test func `ScriptType should have predefined values`() {
        #expect(ScriptTypeAttribute.module.rawValue == "module")
        #expect(ScriptTypeAttribute.importmap.rawValue == "importmap")
        #expect(ScriptTypeAttribute.speculationrules.rawValue == "speculationrules")
        #expect(ScriptTypeAttribute.json.rawValue == "application/json")
        #expect(ScriptTypeAttribute.textPlain.rawValue == "text/plain")
    }
}
