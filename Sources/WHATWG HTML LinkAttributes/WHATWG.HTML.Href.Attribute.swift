public import WHATWG_HTML_Shared

extension WHATWG.HTML.Href {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Href.Attribute {

    @inlinable public static var attribute: String { "href" }
}

extension WHATWG.HTML.Href.Attribute {

    public static func tel(_ phoneNumber: String) -> WHATWG.HTML.Href.Attribute {
        return WHATWG.HTML.Href.Attribute(value: "tel:\(phoneNumber)")
    }

    public static func mailto(_ email: String) -> WHATWG.HTML.Href.Attribute {
        return WHATWG.HTML.Href.Attribute(value: "mailto:\(email)")
    }

    public static func sms(_ phoneNumber: String) -> WHATWG.HTML.Href.Attribute {
        return WHATWG.HTML.Href.Attribute(value: "sms:\(phoneNumber)")
    }

    public static func file(_ path: String) -> WHATWG.HTML.Href.Attribute {
        return WHATWG.HTML.Href.Attribute(value: "file://\(path)")
    }

    public static func fragment(_ fragment: String) -> WHATWG.HTML.Href.Attribute {
        return WHATWG.HTML.Href.Attribute(value: "#\(fragment)")
    }

    public static func whatsapp(_ phoneNumber: String) -> WHATWG.HTML.Href.Attribute {
        return WHATWG.HTML.Href.Attribute(value: "https://wa.me/\(phoneNumber)")
    }

    public static func facetime(_ contact: String) -> WHATWG.HTML.Href.Attribute {
        return WHATWG.HTML.Href.Attribute(value: "facetime:\(contact)")
    }

    public static func facetimeVideo(_ contact: String) -> WHATWG.HTML.Href.Attribute {
        return WHATWG.HTML.Href.Attribute(value: "facetime-video:\(contact)")
    }
}

extension WHATWG.HTML.Href.Attribute {

    public static func fragment(_ base: String, fragment: String) -> WHATWG.HTML.Href.Attribute {
        let baseWithoutFragment = base.split(separator: "#")[0]
        let fragmentWithoutHash = fragment.hasPrefix("#") ? String(fragment.dropFirst()) : fragment
        return WHATWG.HTML.Href.Attribute("\(baseWithoutFragment)#\(fragmentWithoutHash)")
    }

    public static func anchor(_ fragmentId: String) -> WHATWG.HTML.Href.Attribute {
        let fragmentWithoutHash = fragmentId.hasPrefix("#") ? fragmentId : "#\(fragmentId)"
        return WHATWG.HTML.Href.Attribute(fragmentWithoutHash)
    }

    public static func email(
        _ address: String,
        subject: String? = nil,
        body: String? = nil
    ) -> WHATWG.HTML.Href.Attribute {
        var url = "mailto:\(address)"

        if subject != nil || body != nil {
            url += "?"
            var queryParts: [String] = []

            if let subject {
                let encoded = percentEncode(subject)
                queryParts.append("subject=\(encoded)")
            }

            if let body {
                let encoded = percentEncode(body)
                queryParts.append("body=\(encoded)")
            }

            url += queryParts.joined(separator: "&")
        }

        return WHATWG.HTML.Href.Attribute(url)
    }

    private static func percentEncode(_ string: String) -> String {
        var result = ""

        for char in string.utf8 {
            switch char {

            case 0x41...0x5A,
                0x61...0x7A,
                0x30...0x39,
                0x2D,
                0x5F,
                0x2E,
                0x7E:
                result.append(Character(UnicodeScalar(char)))

            default:

                let hex = String(char, radix: 16, uppercase: true)
                result.append("%")
                if hex.count == 1 { result.append("0") }
                result.append(hex)
            }
        }

        return result
    }
}
