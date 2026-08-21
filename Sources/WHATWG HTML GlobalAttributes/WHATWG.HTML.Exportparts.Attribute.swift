public import WHATWG_HTML_Shared

extension WHATWG.HTML.Exportparts {

    public struct Attribute: WHATWG.HTML.Attribute {

        private let partMappings: [PartMapping]

        public init(_ partNames: [String]) {
            self.partMappings = partNames.map { PartMapping(originalName: $0, exposedName: $0) }
        }

        public init(_ partNames: String...) {
            self.partMappings = partNames.map { PartMapping(originalName: $0, exposedName: $0) }
        }

        public init(_ mappings: [PartMapping]) { self.partMappings = mappings }
    }
}

extension WHATWG.HTML.Exportparts.Attribute {

    @inlinable public static var attribute: String { "exportparts" }

    public struct PartMapping: Sendable, Hashable {

        public let originalName: String

        public let exposedName: String

        public init(originalName: String, exposedName: String) {
            self.originalName = originalName
            self.exposedName = exposedName
        }
    }
}

extension WHATWG.HTML.Exportparts.Attribute.PartMapping {

    public var description: String {
        if originalName == exposedName {
            return originalName
        } else {
            return "\(originalName):\(exposedName)"
        }
    }
}

extension WHATWG.HTML.Exportparts.Attribute: CustomStringConvertible {

    public var description: String {
        return self.partMappings.map { $0.description }.joined(separator: ", ")
    }
}
