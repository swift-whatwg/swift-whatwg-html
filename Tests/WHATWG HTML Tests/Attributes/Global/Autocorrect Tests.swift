import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Autocorrect Test` {
    @Test func `Autocorrect attribute should be autocorrect`() {
        #expect(WHATWG.HTML.Autocorrect.Attribute.attribute == "autocorrect")
    }

    @Test(
        "Autocorrect cases description should match the spec",
        arguments: WHATWG.HTML.Autocorrect.Attribute.allCases
    )
    func cases(autocorrect: WHATWG.HTML.Autocorrect.Attribute) {
        switch autocorrect {
        case .on: #expect(autocorrect.description == "on")
        case .empty: #expect(autocorrect.description == "\"\"")
        case .off: #expect(autocorrect.description == "off")
        default: ()
        }
    }

    @Test func `Autocorrect should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Autocorrect.Attribute.allCases.count == 3)
        #expect(WHATWG.HTML.Autocorrect.Attribute.allCases.contains(.on))
        #expect(WHATWG.HTML.Autocorrect.Attribute.allCases.contains(.empty))
        #expect(WHATWG.HTML.Autocorrect.Attribute.allCases.contains(.off))
    }

    @Test(arguments: WHATWG.HTML.Autocorrect.Attribute.allCases)
    func `Autocorrect rawValue should match description`(
        autocorrect: WHATWG.HTML.Autocorrect.Attribute
    ) {
        #expect(autocorrect.rawValue == autocorrect.description)
    }

    @Test(
        arguments: [
            ("on", WHATWG.HTML.Autocorrect.Attribute.on),
            ("\"\"", WHATWG.HTML.Autocorrect.Attribute.empty),
            ("off", WHATWG.HTML.Autocorrect.Attribute.off),
        ]
    ) func `Autocorrect should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Autocorrect.Attribute?
    ) {
        #expect(WHATWG.HTML.Autocorrect.Attribute(rawValue: input) == expected)
    }

    @Test func `Autocorrect empty case should have the correct raw value`() {
        #expect(WHATWG.HTML.Autocorrect.Attribute.empty.rawValue == "\"\"")
    }
}
