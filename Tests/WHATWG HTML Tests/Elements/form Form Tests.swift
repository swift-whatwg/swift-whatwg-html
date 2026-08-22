import Testing
import WHATWG_HTML

@Suite("Form")
struct FormTests {
    @Test("Canonical form element")
    func canonicalElement() {
        let form = WHATWG.HTML.Form.Element()
        let element: any WHATWG.HTML.Element = form

        #expect(type(of: element).tag == "form")
    }
}
