# swift-whatwg-html

Use this package when you need the HTML elements and attributes of the WHATWG Living Standard as Swift types, for example to build an HTML renderer, a validator or form handling on top of them. Start from the `WHATWG.HTML.Element` and `WHATWG.HTML.Attribute` protocols and the types that conform to them, such as `WHATWG.HTML.Anchor.Element` or `WHATWG.HTML.Class.Attribute`, and from `WHATWG.HTML.Form.Data.Entry.List` for submitted form data. The package doesn't render documents. To write HTML pages, use swift-html. To render a view tree to escaped markup, use swift-html-render. For one product over this package, use swift-html-standard.

## Laws

- A string attribute serializes to bytes as its name, an equals sign and its value in double quotes, in UTF-8. A boolean attribute serializes as its bare name when true and as nothing when false.
- `description` is not the serialized form. For a string attribute it is the value alone, and for a boolean attribute it is `true` or `false`.
- Attributes with a fixed set of values are strings with named constants, so any other string is accepted and kept as given. `WHATWG.HTML.Hidden.Attribute.empty` is the empty string, and `WHATWG.HTML.Hidden.Attribute.init()` is the `hidden` value.
- An array literal for a token-list attribute, such as `WHATWG.HTML.Class.Attribute` or `WHATWG.HTML.Rel.Attribute`, joins the tokens with single spaces. An array literal for `WHATWG.HTML.Title.Attribute` joins its lines with newlines.
- `WHATWG.HTML.Data.Attribute.attributeName` is the name with `data-` in front. Its `description` is the value.
- `WHATWG.HTML.DateTime.Attribute` built from an ISO 8601 date-time always holds a full date-time in UTC with Z. A date alone gets midnight, and a value given with an offset is converted to UTC.
- `WHATWG.HTML.Href.Attribute.email(_:subject:body:)` percent-encodes the subject and body as UTF-8, leaving only letters, digits, hyphen, underscore, period and tilde. The address, and the arguments to the other link builders, are used as given.
- An element's `categories` are the ones it always has. A category that depends on an attribute, such as interactive content for an `a` with an `href`, is not included.
- A transparent content model allows every category, without looking at the parent. A text content model allows text but no category, and a model with phrasing or flow content allows text too.
- `WHATWG.HTML.Form.Data.Entry.List` keeps entries in order, duplicates included, and matches names exactly. `WHATWG.HTML.Form.Data.Entry.List.names` lists each name once, in order of first appearance. Subscripting with an absent name gives nil rather than an empty array, removing a name removes every entry with it and returns how many went, and two lists are equal only with the same entries in the same order.
