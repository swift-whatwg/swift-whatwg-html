import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Hidden Test` {
    @Test func `Hidden attribute should be hidden`() {
        #expect(WHATWG.HTML.Hidden.Attribute.attribute == "hidden")
    }

    @Test(
        "Hidden cases description should match the spec",
        arguments: WHATWG.HTML.Hidden.Attribute.allCases
    ) func cases(
        hidden: WHATWG.HTML.Hidden.Attribute
    ) {
        switch hidden {
        case .hidden: #expect(hidden.description == "hidden")
        case .untilFound: #expect(hidden.description == "until-found")
        case .empty: #expect(hidden.description.isEmpty)
        default: ()
        }
    }

    @Test func `Hidden should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Hidden.Attribute.allCases.count == 3)
        #expect(WHATWG.HTML.Hidden.Attribute.allCases.contains(.hidden))
        #expect(WHATWG.HTML.Hidden.Attribute.allCases.contains(.untilFound))
    }

    @Test(arguments: WHATWG.HTML.Hidden.Attribute.allCases)
    func `Hidden rawValue should match description`(hidden: WHATWG.HTML.Hidden.Attribute) {
        #expect(hidden.rawValue == hidden.description)
    }

    @Test(
        arguments: [
            ("hidden", WHATWG.HTML.Hidden.Attribute.hidden),
            ("until-found", WHATWG.HTML.Hidden.Attribute.untilFound),

        ]
    ) func `Hidden should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Hidden.Attribute?
    ) {
        #expect(WHATWG.HTML.Hidden.Attribute(rawValue: input) == expected)
    }

    @Test func `Empty Hidden should use default mode`() {
        let hiddenDefault = WHATWG.HTML.Hidden.Attribute()
        #expect(hiddenDefault == .hidden)
    }
}
