import Testing
import WHATWG_HTML

@Suite struct `Ping Test` {
    @Test func `Ping attribute should be ping`() {
        #expect(WHATWG.HTML.Ping.Attribute.attribute == "ping")
    }

    @Test func `Ping array literal support`() {
        let ping: WHATWG.HTML.Ping.Attribute = [
            "https://example.com/ping", "https://analytics.example.com/track",
        ]
        #expect(ping.rawValue == "https://example.com/ping https://analytics.example.com/track")
    }
}
