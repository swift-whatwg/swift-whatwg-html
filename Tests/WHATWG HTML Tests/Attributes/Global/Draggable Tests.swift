import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Draggable Test` {
    @Test func `Draggable attribute should be draggable`() {
        #expect(WHATWG.HTML.Draggable.Attribute.attribute == "draggable")
    }

    @Test(
        "Draggable cases description should match the spec",
        arguments: WHATWG.HTML.Draggable.Attribute.allCases
    )
    func cases(draggable: WHATWG.HTML.Draggable.Attribute) {
        switch draggable {
        case .true: #expect(draggable.description == "true")
        case .false: #expect(draggable.description == "false")
        case .auto: #expect(draggable.description == "auto")
        default: ()
        }
    }

    @Test func `Draggable should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Draggable.Attribute.allCases.count == 3)
        #expect(WHATWG.HTML.Draggable.Attribute.allCases.contains(.true))
        #expect(WHATWG.HTML.Draggable.Attribute.allCases.contains(.false))
        #expect(WHATWG.HTML.Draggable.Attribute.allCases.contains(.auto))
    }

    @Test(arguments: WHATWG.HTML.Draggable.Attribute.allCases)
    func `Draggable rawValue should match description`(draggable: WHATWG.HTML.Draggable.Attribute) {
        #expect(draggable.rawValue == draggable.description)
    }

    @Test(
        arguments: [
            ("true", WHATWG.HTML.Draggable.Attribute.true),
            ("false", WHATWG.HTML.Draggable.Attribute.false),
            ("auto", WHATWG.HTML.Draggable.Attribute.auto),
        ]
    ) func `Draggable should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Draggable.Attribute?
    ) {
        #expect(WHATWG.HTML.Draggable.Attribute(rawValue: input) == expected)
    }
}
