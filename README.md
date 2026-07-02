# swift-whatwg-html

[![CI](https://github.com/swift-whatwg/swift-whatwg-html/workflows/CI/badge.svg)](https://github.com/swift-whatwg/swift-whatwg-html/actions/workflows/ci.yml)
![Development Status](https://img.shields.io/badge/status-active--development-blue.svg)

Type-safe Swift implementation of the WHATWG HTML Living Standard with modular architecture and RFC compliance.

## Overview

swift-whatwg-html provides a complete, spec-aligned implementation of HTML elements and attributes following the WHATWG HTML Living Standard. The package is structured as composable modules organized by specification sections, enabling precise dependency management and compile-time HTML validation.

All HTML types are backed by relevant RFCs and international standards (RFC 2045 for MIME types, ISO 8601 for datetime values) ensuring technical correctness and interoperability.

## Features

- **WHATWG HTML Living Standard compliance**: Elements and attributes match the official specification
- **Modular architecture**: 26 focused modules organized by spec sections (Document, Forms, Tables, etc.)
- **RFC integration**: RFC 2045 ContentType for MIME handling, ISO 8601 DateTime for temporal values
- **Type-safe attributes**: Each element exposes only valid attributes with appropriate types
- **Swift 6 concurrency**: Full Sendable conformance with strict concurrency mode
- **Input type specialization**: 21 distinct input types (text, search, email, color, etc.) with type-specific attributes
- **Obsolete element support**: Deprecated HTML elements (marquee, frame, font) available in WHATWG HTML Obsolete module
- **Zero Foundation dependency**: Core modules independent of Foundation framework

## Installation

### Swift Package Manager

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/swift-whatwg/swift-whatwg-html", from: "0.2.2")
]
```

### Available Products

#### Umbrella Modules
- **WHATWG HTML**: Complete implementation (all elements and attributes)
- **WHATWG HTML Elements**: All element modules
- **WHATWG HTML Attributes**: All attribute modules

#### Element Modules (Spec-Organized)
- **WHATWG HTML Document**: `<html>`, `<head>`, `<body>`, `<title>`
- **WHATWG HTML Metadata**: `<meta>`, `<link>`, `<style>`, `<base>`
- **WHATWG HTML Sections**: `<h1>`-`<h6>`, `<header>`, `<footer>`, `<nav>`, `<section>`, `<article>`, `<aside>`
- **WHATWG HTML Grouping**: `<p>`, `<div>`, `<ul>`, `<ol>`, `<li>`, `<dl>`, `<dt>`, `<dd>`, `<figure>`, `<blockquote>`
- **WHATWG HTML TextSemantics**: `<a>`, `<em>`, `<strong>`, `<code>`, `<span>`, `<time>`, `<data>`, etc.
- **WHATWG HTML Embedded**: `<img>`, `<video>`, `<audio>`, `<canvas>`, `<iframe>`, `<embed>`, `<picture>`
- **WHATWG HTML Tables**: `<table>`, `<tr>`, `<td>`, `<th>`, `<thead>`, `<tbody>`, `<tfoot>`, `<col>`, `<colgroup>`
- **WHATWG HTML Forms**: `<form>`, `<input>`, `<button>`, `<select>`, `<textarea>`, `<label>`, `<fieldset>`
- **WHATWG HTML Interactive**: `<details>`, `<summary>`, `<dialog>`
- **WHATWG HTML Scripting**: `<script>`, `<noscript>`, `<template>`, `<slot>`
- **WHATWG HTML Edits**: `<ins>`, `<del>`
- **WHATWG HTML Links**: Link relationship types
- **WHATWG HTML CustomElements**: Custom element support
- **WHATWG HTML Obsolete**: Deprecated elements (`<marquee>`, `<frame>`, `<font>`, etc.)

#### Attribute Modules
- **WHATWG HTML GlobalAttributes**: Attributes available on all elements (id, class, style, etc.)
- **WHATWG HTML FormAttributes**: Form-specific attributes (action, method, enctype, etc.)
- **WHATWG HTML LinkAttributes**: Link attributes (href, rel, target, etc.)
- **WHATWG HTML MediaAttributes**: Media attributes (src, controls, autoplay, etc.)
- **WHATWG HTML TableAttributes**: Table attributes (colspan, rowspan, scope, etc.)
- **WHATWG HTML ScriptAttributes**: Script attributes (async, defer, type, etc.)

#### Core Modules
- **WHATWG HTML Shared**: Base protocols and types
- **WHATWG HTML FormData**: FormData API implementation

## Quick Start

### Using the Complete Implementation

```swift
import WHATWG_HTML

// Create form with typed input element
let searchInput = Input(
    name: Name("query"),
    disabled: nil,
    form: nil,
    type: .search(
        Input.Search(
            value: Value(""),
            placeholder: Placeholder("Search...")
        )
    )
)
```

### Using Modular Imports

```swift
import WHATWG_HTML_Forms
import WHATWG_HTML_FormAttributes

// Only import what you need
let form = Form(
    action: Action("/search"),
    method: Method.get,
    enctype: EncType.urlencoded
)
```

## Usage

### Type-Safe Input Elements

Each input type exposes only its valid attributes. The `search` input type:

```swift
let search = Input.search(
    name: Name?("query"),
    value: Value<String>?(nil),
    list: List?(nil),
    maxlength: Maxlength?(nil),
    minlength: Minlength?(nil),
    pattern: Pattern?(nil),
    placeholder: Placeholder?("Search..."),
    readonly: Readonly?(nil),
    size: Size?(nil),
    spellcheck: Spellcheck?(nil),
    required: Required?(nil),
    disabled: Disabled?(nil),
    form: Form.ID?(nil)
)
```

Contrast with the `color` input type:

```swift
let color = Input.color(
    name: Name?("theme"),
    value: Value<String>?(nil),
    disabled: Disabled?(nil),
    form: Form.ID?(nil)
)
```

### RFC-Compliant Media Types

Media attributes use RFC 2045 ContentType for MIME validation:

```swift
import WHATWG_HTML_Embedded
import RFC_2045

let video = Video(
    src: Src("/video.mp4"),
    type: SourceType(contentType: .videoMP4),  // RFC 2045 MIME type
    controls: Controls(),
    preload: Video.Preload.metadata
)
```

### ISO 8601 DateTime Values

Time-related attributes use ISO 8601 DateTime:

```swift
import WHATWG_HTML_TextSemantics
import ISO_8601

let time = Time(
    datetime: WHATWG_HTML_GlobalAttributes.DateTime(
        date: Date(year: 2025, month: 11, day: 21)
    )
)
```

### Modular Architecture Benefits

Import only the modules you need for smaller binaries:

```swift
// Minimal imports for a simple page
import WHATWG_HTML_Document
import WHATWG_HTML_Sections
import WHATWG_HTML_Grouping

// vs. importing everything
import WHATWG_HTML
```

## Requirements

- Swift 6.2+
- macOS 15.0+ / iOS 18.0+ / tvOS 18.0+ / watchOS 11.0+
- Swift 6 language mode with strict concurrency

## Architecture

### Module Organization

The package follows the WHATWG HTML Living Standard structure:

```
swift-whatwg-html/
├── WHATWG HTML/              # Umbrella (all modules)
├── WHATWG HTML Shared/       # Base protocols
├── WHATWG HTML FormData/     # FormData API
├── WHATWG HTML Elements/     # Element umbrella
├── WHATWG HTML Attributes/   # Attribute umbrella
│
├── Element Modules (14):
│   ├── WHATWG HTML Document/
│   ├── WHATWG HTML Metadata/
│   ├── WHATWG HTML Sections/
│   ├── WHATWG HTML Grouping/
│   ├── WHATWG HTML TextSemantics/
│   ├── WHATWG HTML Embedded/
│   ├── WHATWG HTML Tables/
│   ├── WHATWG HTML Forms/
│   ├── WHATWG HTML Interactive/
│   ├── WHATWG HTML Scripting/
│   ├── WHATWG HTML Edits/
│   ├── WHATWG HTML Links/
│   ├── WHATWG HTML CustomElements/
│   └── WHATWG HTML Obsolete/
│
└── Attribute Modules (6):
    ├── WHATWG HTML GlobalAttributes/
    ├── WHATWG HTML FormAttributes/
    ├── WHATWG HTML LinkAttributes/
    ├── WHATWG HTML MediaAttributes/
    ├── WHATWG HTML TableAttributes/
    └── WHATWG HTML ScriptAttributes/
```

### Integration with Standards

- **RFC 2045**: MIME ContentType for media type validation
- **ISO 8601**: DateTime for temporal values
- **WHATWG HTML Living Standard**: Element and attribute specifications

## Related Packages

### Umbrella Package
- [swift-html-standard](https://github.com/swift-standards/swift-html-standard): Compatibility wrapper providing the old swift-html-standard API structure

### Used By
- [swift-html-css-pointfree](https://github.com/swift-foundations/swift-html-css-pointfree): Integration with pointfree-html for HTML generation

### Dependencies
- [swift-rfc-2045](https://github.com/swift-ietf/swift-rfc-2045): RFC 2045 MIME types
- [swift-iso-8601](https://github.com/swift-iso/swift-iso-8601): ISO 8601 date/time
- [swift-standards](https://github.com/swift-standards/swift-standards): Shared standard utilities

## Contributing

Contributions are welcome! Please ensure:
- All changes maintain WHATWG HTML Living Standard compliance
- Tests pass with Swift 6.2
- Code follows the existing style (swift-format with 4-space indentation)
- New features include test coverage

## License

This project is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.
