// WHATWG_HTML+Elements.swift
// Typealiases bringing element types into the WHATWG_HTML namespace
//
// This allows both:
// - WHATWG_HTML_Sections.Article (original module-namespaced)
// - WHATWG_HTML.Article (via typealias, enabling HTML.Article)

import WHATWG_HTML_Document
import WHATWG_HTML_Edits
import WHATWG_HTML_Embedded
import WHATWG_HTML_Forms
import WHATWG_HTML_Grouping
import WHATWG_HTML_Interactive
import WHATWG_HTML_Metadata
import WHATWG_HTML_Obsolete
import WHATWG_HTML_Scripting
import WHATWG_HTML_Sections
public import WHATWG_HTML_Shared
import WHATWG_HTML_Tables
import WHATWG_HTML_TextSemantics

extension WHATWG_HTML {
    // MARK: - Document (4.1)
    public typealias HtmlRoot = WHATWG_HTML_Document.HtmlRoot
    public typealias Head = WHATWG_HTML_Document.Head
    public typealias Body = WHATWG_HTML_Document.Body
    public typealias Title = WHATWG_HTML_Document.Title
    public typealias Base = WHATWG_HTML_Document.Base

    // MARK: - Metadata (4.2)
    public typealias Meta = WHATWG_HTML_Metadata.Meta
    public typealias Link = WHATWG_HTML_Metadata.Link
    public typealias Style = WHATWG_HTML_Metadata.Style

    // MARK: - Sections (4.3)
    public typealias Article = WHATWG_HTML_Sections.Article
    public typealias Section = WHATWG_HTML_Sections.Section
    public typealias NavigationSection = WHATWG_HTML_Sections.NavigationSection
    public typealias Aside = WHATWG_HTML_Sections.Aside
    public typealias Header = WHATWG_HTML_Sections.Header
    public typealias Footer = WHATWG_HTML_Sections.Footer
    public typealias Address = WHATWG_HTML_Sections.Address
    public typealias H1 = WHATWG_HTML_Sections.H1
    public typealias H2 = WHATWG_HTML_Sections.H2
    public typealias H3 = WHATWG_HTML_Sections.H3
    public typealias H4 = WHATWG_HTML_Sections.H4
    public typealias H5 = WHATWG_HTML_Sections.H5
    public typealias H6 = WHATWG_HTML_Sections.H6
    public typealias HeadingGroup = WHATWG_HTML_Sections.HeadingGroup

    // MARK: - Grouping Content (4.4)
    public typealias Paragraph = WHATWG_HTML_Grouping.Paragraph
    public typealias ThematicBreak = WHATWG_HTML_Grouping.ThematicBreak
    public typealias PreformattedText = WHATWG_HTML_Grouping.PreformattedText
    public typealias BlockQuote = WHATWG_HTML_Grouping.BlockQuote
    public typealias OrderedList = WHATWG_HTML_Grouping.OrderedList
    public typealias UnorderedList = WHATWG_HTML_Grouping.UnorderedList
    public typealias ListItem = WHATWG_HTML_Grouping.ListItem
    public typealias DescriptionList = WHATWG_HTML_Grouping.DescriptionList
    public typealias DescriptionTerm = WHATWG_HTML_Grouping.DescriptionTerm
    public typealias DescriptionDetails = WHATWG_HTML_Grouping.DescriptionDetails
    public typealias Figure = WHATWG_HTML_Grouping.Figure
    public typealias FigureCaption = WHATWG_HTML_Grouping.FigureCaption
    public typealias Main = WHATWG_HTML_Grouping.Main
    public typealias Search = WHATWG_HTML_Grouping.Search
    public typealias ContentDivision = WHATWG_HTML_Grouping.ContentDivision

    // MARK: - Text-level Semantics (4.5)
    public typealias Anchor = WHATWG_HTML_TextSemantics.Anchor
    public typealias Emphasis = WHATWG_HTML_TextSemantics.Emphasis
    public typealias StrongImportance = WHATWG_HTML_TextSemantics.StrongImportance
    public typealias Small = WHATWG_HTML_TextSemantics.Small
    public typealias Strikethrough = WHATWG_HTML_TextSemantics.Strikethrough
    public typealias Cite = WHATWG_HTML_TextSemantics.Cite
    public typealias InlineQuotation = WHATWG_HTML_TextSemantics.InlineQuotation
    public typealias Definition = WHATWG_HTML_TextSemantics.Definition
    public typealias Abbreviation = WHATWG_HTML_TextSemantics.Abbreviation
    public typealias Ruby = WHATWG_HTML_TextSemantics.Ruby
    public typealias RubyBase = WHATWG_HTML_TextSemantics.RubyBase
    public typealias RubyText = WHATWG_HTML_TextSemantics.RubyText
    public typealias RubyTextContainer = WHATWG_HTML_TextSemantics.RubyTextContainer
    public typealias RubyParenthesis = WHATWG_HTML_TextSemantics.RubyParenthesis
    public typealias Data = WHATWG_HTML_TextSemantics.Data
    public typealias Time = WHATWG_HTML_TextSemantics.Time
    public typealias Code = WHATWG_HTML_TextSemantics.Code
    public typealias Variable = WHATWG_HTML_TextSemantics.Variable
    public typealias Samp = WHATWG_HTML_TextSemantics.Samp
    public typealias KeyboardInput = WHATWG_HTML_TextSemantics.KeyboardInput
    public typealias Subscript = WHATWG_HTML_TextSemantics.Subscript
    public typealias Superscript = WHATWG_HTML_TextSemantics.Superscript
    public typealias IdiomaticText = WHATWG_HTML_TextSemantics.IdiomaticText
    public typealias B = WHATWG_HTML_TextSemantics.B
    public typealias UnarticulatedAnnotation = WHATWG_HTML_TextSemantics.UnarticulatedAnnotation
    public typealias BidirectionalIsolate = WHATWG_HTML_TextSemantics.BidirectionalIsolate
    public typealias BidirectionalTextOverride = WHATWG_HTML_TextSemantics.BidirectionalTextOverride
    public typealias ContentSpan = WHATWG_HTML_TextSemantics.ContentSpan
    public typealias BR = WHATWG_HTML_TextSemantics.BR
    public typealias LineBreakOpportunity = WHATWG_HTML_TextSemantics.LineBreakOpportunity
    public typealias Mark = WHATWG_HTML_TextSemantics.Mark

    // MARK: - Edits (4.7)
    public typealias InsertedText = WHATWG_HTML_Edits.InsertedText
    public typealias Del = WHATWG_HTML_Edits.Del

    // MARK: - Embedded Content (4.8)
    public typealias Picture = WHATWG_HTML_Embedded.Picture
    public typealias Source = WHATWG_HTML_Embedded.Source
    public typealias Image = WHATWG_HTML_Embedded.Image
    public typealias InlineFrame = WHATWG_HTML_Embedded.InlineFrame
    public typealias Embed = WHATWG_HTML_Embedded.Embed
    public typealias ExternalObject = WHATWG_HTML_Embedded.ExternalObject
    public typealias Video = WHATWG_HTML_Embedded.Video
    public typealias Audio = WHATWG_HTML_Embedded.Audio
    public typealias Track = WHATWG_HTML_Embedded.Track
    public typealias Map = WHATWG_HTML_Embedded.Map
    public typealias Area = WHATWG_HTML_Embedded.Area
    public typealias Canvas = WHATWG_HTML_Embedded.Canvas
    public typealias FencedFrame = WHATWG_HTML_Embedded.FencedFrame

    // MARK: - Tabular Data (4.9)
    public typealias Table = WHATWG_HTML_Tables.Table
    public typealias Caption = WHATWG_HTML_Tables.Caption
    public typealias TableColumnGroup = WHATWG_HTML_Tables.TableColumnGroup
    public typealias TableColumn = WHATWG_HTML_Tables.TableColumn
    public typealias TableHead = WHATWG_HTML_Tables.TableHead
    public typealias TableBody = WHATWG_HTML_Tables.TableBody
    public typealias TableFoot = WHATWG_HTML_Tables.TableFoot
    public typealias TableRow = WHATWG_HTML_Tables.TableRow
    public typealias TableHeader = WHATWG_HTML_Tables.TableHeader
    public typealias TableDataCell = WHATWG_HTML_Tables.TableDataCell

    // MARK: - Forms (4.10)
    public typealias Form = WHATWG_HTML_Forms.Form
    public typealias Label = WHATWG_HTML_Forms.Label
    public typealias Input = WHATWG_HTML_Forms.Input
    public typealias Button = WHATWG_HTML_Forms.Button
    public typealias Select = WHATWG_HTML_Forms.Select
    public typealias DataList = WHATWG_HTML_Forms.DataList
    public typealias OptionGroup = WHATWG_HTML_Forms.OptionGroup
    public typealias Option = WHATWG_HTML_Forms.Option
    public typealias Textarea = WHATWG_HTML_Forms.Textarea
    public typealias Output = WHATWG_HTML_Forms.Output
    public typealias ProgressIndicator = WHATWG_HTML_Forms.ProgressIndicator
    public typealias Meter = WHATWG_HTML_Forms.Meter
    public typealias FieldSet = WHATWG_HTML_Forms.FieldSet
    public typealias Legend = WHATWG_HTML_Forms.Legend

    // MARK: - Interactive Elements (4.11)
    public typealias Details = WHATWG_HTML_Interactive.Details
    public typealias DisclosureSummary = WHATWG_HTML_Interactive.DisclosureSummary
    public typealias Dialog = WHATWG_HTML_Interactive.Dialog
    public typealias Menu = WHATWG_HTML_Interactive.Menu

    // MARK: - Scripting (4.12)
    public typealias Script = WHATWG_HTML_Scripting.Script
    public typealias Noscript = WHATWG_HTML_Scripting.Noscript
    public typealias ContentTemplate = WHATWG_HTML_Scripting.ContentTemplate
    public typealias WebComponentSlot = WHATWG_HTML_Scripting.WebComponentSlot

    // MARK: - Obsolete Elements
    public typealias Font = WHATWG_HTML_Obsolete.Font
    public typealias Center = WHATWG_HTML_Obsolete.Center
    public typealias Big = WHATWG_HTML_Obsolete.Big
    public typealias Strike = WHATWG_HTML_Obsolete.Strike
    public typealias TeletypeText = WHATWG_HTML_Obsolete.TeletypeText
    public typealias Marquee = WHATWG_HTML_Obsolete.Marquee
    public typealias Frameset = WHATWG_HTML_Obsolete.Frameset
    public typealias Frame = WHATWG_HTML_Obsolete.Frame
    public typealias NoBr = WHATWG_HTML_Obsolete.NoBr
    public typealias Directory = WHATWG_HTML_Obsolete.Directory
}
