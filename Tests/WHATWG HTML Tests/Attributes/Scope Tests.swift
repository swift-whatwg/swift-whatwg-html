import Testing
import WHATWG_HTML

@Suite struct `Scope Test` {
    @Test func `Scope attribute should be scope`() {
        #expect(WHATWG.HTML.Scope.Attribute.attribute == "scope")
    }
}
