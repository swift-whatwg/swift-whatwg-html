import Testing
import WHATWG_HTML

enum `form Form Tests` {}

extension `form Form Tests` {
    @Suite
    struct `Form` {
        @Test
        func `Canonical form element`() {
            let form = WHATWG.HTML.Form.Element()
            let element: any WHATWG.HTML.Element = form

            #expect(type(of: element).tag == "form")
        }
    }
}
