import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Popover Test` {
    @Test func `Popover attribute should be popover`() {
        #expect(WHATWG.HTML.Popover.Attribute.attribute == "popover")
    }

    @Test(
        "Popover cases description should match the spec",
        arguments: WHATWG.HTML.Popover.Attribute.allCases
    )
    func cases(popover: WHATWG.HTML.Popover.Attribute) {
        switch popover {
        case .auto: #expect(popover.description == "auto")
        case .manual: #expect(popover.description == "manual")
        case .hint: #expect(popover.description == "hint")
        default: ()
        }
    }

    @Test func `Popover should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Popover.Attribute.allCases.count == 3)
        #expect(WHATWG.HTML.Popover.Attribute.allCases.contains(.auto))
        #expect(WHATWG.HTML.Popover.Attribute.allCases.contains(.manual))
        #expect(WHATWG.HTML.Popover.Attribute.allCases.contains(.hint))
    }

    @Test(arguments: WHATWG.HTML.Popover.Attribute.allCases)
    func `Popover rawValue should match description`(popover: WHATWG.HTML.Popover.Attribute) {
        #expect(popover.rawValue == popover.description)
    }

    @Test(
        arguments: [
            ("auto", WHATWG.HTML.Popover.Attribute.auto),
            ("manual", WHATWG.HTML.Popover.Attribute.manual),
        ]
    ) func `Popover should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Popover.Attribute?
    ) {
        #expect(WHATWG.HTML.Popover.Attribute(rawValue: input) == expected)
    }
}
