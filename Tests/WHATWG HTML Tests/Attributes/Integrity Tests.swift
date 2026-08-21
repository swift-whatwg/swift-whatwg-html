import Testing
import WHATWG_HTML

@Suite struct `Integrity Test` {
    @Test func `Integrity attribute should be integrity`() {
        #expect(WHATWG.HTML.Integrity.Attribute.attribute == "integrity")
    }

    @Test func `Integrity hash factory methods`() {
        let hash = "oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQ"
        #expect(WHATWG.HTML.Integrity.Attribute.sha256(hash).rawValue == "sha256-\(hash)")
        #expect(WHATWG.HTML.Integrity.Attribute.sha384(hash).rawValue == "sha384-\(hash)")
        #expect(WHATWG.HTML.Integrity.Attribute.sha512(hash).rawValue == "sha512-\(hash)")
    }
}
