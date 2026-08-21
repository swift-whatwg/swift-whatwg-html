import Testing
import WHATWG_HTML

@Suite struct `Async Test` {
    @Test func `Async attribute should be async`() {
        #expect(WHATWG.HTML.Async.Attribute.attribute == "async")
    }
}
