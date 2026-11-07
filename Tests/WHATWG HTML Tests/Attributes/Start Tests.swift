import Testing
import WHATWG_HTML

enum `Start Tests` {}

extension `Start Tests` {
    @Suite struct `Start Test` {
        @Test func `Start attribute should be start`() {
            #expect(WHATWG.HTML.Start.Attribute.attribute == "start")
        }

        @Test func `Start should support integer initialization`() {
            let start = WHATWG.HTML.Start.Attribute(4)
            #expect(start.rawValue == "4")
        }

        @Test func `Start should support integer literal`() {
            let start: WHATWG.HTML.Start.Attribute = 10
            #expect(start.rawValue == "10")
        }
    }
}
