// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

public import WHATWG_HTML_Shared

/// An attribute that specifies the URL that a hyperlink points to.
///
/// The `href` attribute is most commonly used on `<a>` elements to create hyperlinks,
/// but it's also used on several other elements like `<area>`, `<base>`, and `<link>`.
/// It defines the destination URL that the element links to.
///
/// ## Supported URL Schemes
///
/// Links are not restricted to HTTP-based URLs; they can use any URL scheme supported by browsers:
///
/// - HTTP and HTTPS URLs (e.g., `https://example.com`)
/// - Telephone numbers with `tel:` URLs (e.g., `tel:+1-234-567-8910`)
/// - Email addresses with `mailto:` URLs (e.g., `mailto:example@example.com`)
/// - SMS text messages with `sms:` URLs (e.g., `sms:+1-234-567-8910`)
/// - Local file paths with `file:` URLs (e.g., `file:///path/to/file.html`)
/// - Executable code with `javascript:` URLs (not recommended for security reasons)
///
/// ## URL Features
///
/// URLs can also include features to locate specific parts of the resource:
///
/// - Document fragments with hash symbols (e.g., `#section-id`)
/// - Specific text portions with text fragments (e.g., `#:~:text=Search%20Text`)
/// - Media fragments to specify time ranges in media files (e.g., `#t=10,20`)
///
/// ## Usage Notes
///
/// - For security reasons, use caution when creating links to `javascript:` URLs.
/// - When linking to external sites, consider using `rel="noopener"` to prevent security vulnerabilities.
/// - Links to non-HTTP protocols may not be supported by all browsers.
/// - Use absolute URLs when linking across domains and relative URLs for same-domain links.
/// - Empty `href` values (`href=""`) or omitted `href` attributes make the element act as a placeholder.
///
/// ## Examples
///
/// ```swift
/// // Basic external link
/// HTML.a.href("https://example.com").text("Visit Example.com")
///
/// // Link with a fragment
/// HTML.a.href("https://example.com/page#section").text("Go to Section")
///
/// // Email link
/// HTML.a.href(Href.email("example@example.com")).text("Contact Us")
///
/// // Phone link
/// HTML.a.href(Href.tel("123-456-7890")).text("Call Us")
///
/// // Relative link
/// HTML.a.href("/about").text("About Us")
/// ```
@dynamicMemberLookup public struct Href: WHATWG_HTML.StringAttribute {
    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the href attribute
    public init(value: String) { self.rawValue = value }
}

extension Href {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "href" }
}

extension Href {
    /// Create an Href for a telephone number
    /// - Parameter phoneNumber: The phone number (can include country code, dashes, spaces, etc.)
    /// - Returns: An Href with a tel: scheme
    public static func tel(_ phoneNumber: String) -> Href {
        return Href(value: "tel:\(phoneNumber)")
    }

    /// Create an Href for an email address
    /// - Parameter email: The email address
    /// - Returns: An Href with a mailto: scheme
    public static func mailto(_ email: String) -> Href { return Href(value: "mailto:\(email)") }

    /// Create an Href for SMS
    /// - Parameter phoneNumber: The phone number to send SMS to
    /// - Returns: An Href with an sms: scheme
    public static func sms(_ phoneNumber: String) -> Href {
        return Href(value: "sms:\(phoneNumber)")
    }

    /// Create an Href for a file URL
    /// - Parameter path: The file path
    /// - Returns: An Href with a file: scheme
    public static func file(_ path: String) -> Href { return Href(value: "file://\(path)") }

    /// Create an Href for a fragment (anchor) within the current page
    /// - Parameter fragment: The fragment identifier (without the # symbol)
    /// - Returns: An Href with just the fragment
    public static func fragment(_ fragment: String) -> Href { return Href(value: "#\(fragment)") }

    /// Create an Href for WhatsApp
    /// - Parameter phoneNumber: The phone number (with country code)
    /// - Returns: An Href with a WhatsApp URL scheme
    public static func whatsapp(_ phoneNumber: String) -> Href {
        return Href(value: "https://wa.me/\(phoneNumber)")
    }

    /// Create an Href for FaceTime
    /// - Parameter contact: Phone number or email address
    /// - Returns: An Href with a facetime: scheme
    public static func facetime(_ contact: String) -> Href {
        return Href(value: "facetime:\(contact)")
    }

    /// Create an Href for FaceTime video call
    /// - Parameter contact: Phone number or email address
    /// - Returns: An Href with a facetime-video: scheme
    public static func facetimeVideo(_ contact: String) -> Href {
        return Href(value: "facetime-video:\(contact)")
    }
}

// MARK: - Usage Examples
/*
// Foundation.URL
let websiteURL = URL(string: "https://example.com")!
let link1 = Link(href: Href.url(websiteURL), rel: "external")

// Telephone
let phoneLink = Link(href: Href.tel("+1-555-123-4567"), rel: "nofollow")

// Email
let emailLink = Link(href: Href.mailto("contact@example.com"), rel: "nofollow")
let emailWithSubject = Link(href: Href.mailto("support@example.com", subject: "Help Request"), rel: "nofollow")

// SMS
let smsLink = Link(href: Href.sms("+1-555-123-4567"), rel: "nofollow")
let smsWithBody = Link(href: Href.sms("+1-555-123-4567", body: "Hello there!"), rel: "nofollow")

// Fragment/Anchor
let anchorLink = Link(href: Href.fragment("section-1"), rel: "bookmark")

// WhatsApp
let whatsappLink = Link(href: Href.whatsapp("+1234567890"), rel: "nofollow")
let whatsappWithMessage = Link(href: Href.whatsapp("+1234567890", message: "Hello!"), rel: "nofollow")

// File
let fileLink = Link(href: Href.file("/path/to/document.pdf"), rel: "nofollow")

// FaceTime
let facetimeLink = Link(href: Href.facetime("user@example.com"), rel: "nofollow")
let facetimeVideoLink = Link(href: Href.facetimeVideo("+1-555-123-4567"), rel: "nofollow")
*/

extension Href {
    /// Creates a link with a fragment identifier (#section)
    public static func fragment(_ base: String, fragment: String) -> Href {
        let baseWithoutFragment = base.split(separator: "#")[0]
        let fragmentWithoutHash = fragment.hasPrefix("#") ? String(fragment.dropFirst()) : fragment
        return Href("\(baseWithoutFragment)#\(fragmentWithoutHash)")
    }

    /// Creates a link to a specific fragment on the current page
    public static func anchor(_ fragmentId: String) -> Href {
        let fragmentWithoutHash = fragmentId.hasPrefix("#") ? fragmentId : "#\(fragmentId)"
        return Href(fragmentWithoutHash)
    }

    /// Creates an email link (mailto:) with optional subject and body
    ///
    /// Properly encodes the subject and body parameters for use in mailto: URLs.
    ///
    /// ## Example
    ///
    /// ```swift
    /// let mailtoLink = Href.email(
    ///     "user@example.com",
    ///     subject: "Hello",
    ///     body: "This is a test message"
    /// )
    /// // Result: "mailto:user@example.com?subject=Hello&body=This%20is%20a%20test%20message"
    /// ```
    public static func email(_ address: String, subject: String? = nil, body: String? = nil) -> Href
    {
        var url = "mailto:\(address)"

        if subject != nil || body != nil {
            url += "?"
            var queryParts: [String] = []

            if let subject = subject {
                let encoded = percentEncode(subject)
                queryParts.append("subject=\(encoded)")
            }

            if let body = body {
                let encoded = percentEncode(body)
                queryParts.append("body=\(encoded)")
            }

            url += queryParts.joined(separator: "&")
        }

        return Href(url)
    }

    /// Percent-encodes a string for use in URL query parameters
    ///
    /// Encodes all characters except:
    /// - Unreserved characters: A-Z, a-z, 0-9, -, _, ., ~
    ///
    /// This follows RFC 3986 percent-encoding for query parameters.
    private static func percentEncode(_ string: String) -> String {
        var result = ""

        for char in string.utf8 {
            switch char {
            // Unreserved characters (RFC 3986 Section 2.3)
            case 0x41...0x5A,  // A-Z
                0x61...0x7A,  // a-z
                0x30...0x39,  // 0-9
                0x2D,  // -
                0x5F,  // _
                0x2E,  // .
                0x7E:  // ~
                result.append(Character(UnicodeScalar(char)))

            // Everything else: percent-encode
            default:
                // Convert to hex without Foundation
                let hex = String(char, radix: 16, uppercase: true)
                result.append("%")
                if hex.count == 1 { result.append("0") }
                result.append(hex)
            }
        }

        return result
    }
}
