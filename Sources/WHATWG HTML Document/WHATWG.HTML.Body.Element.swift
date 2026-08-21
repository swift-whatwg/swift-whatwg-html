public import WHATWG_HTML_Shared

extension WHATWG.HTML.Body {

    public struct Element: WHATWG.HTML.Element {

        @available(*, deprecated, message: "Use JavaScript addEventListener('afterprint') instead")
        public var onAfterPrint: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('beforeprint') instead")
        public var onBeforePrint: String?

        @available(
            *,
            deprecated,
            message: "Use JavaScript addEventListener('beforeunload') instead"
        )
        public var onBeforeUnload: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('blur') instead") public
            var onBlur: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('error') instead")
        public
            var onError: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('focus') instead")
        public
            var onFocus: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('hashchange') instead")
        public var onHashChange: String?

        @available(
            *,
            deprecated,
            message: "Use JavaScript addEventListener('languagechange') instead"
        )
        public var onLanguageChange: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('load') instead") public
            var onLoad: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('message') instead")
        public
            var onMessage: String?

        @available(
            *,
            deprecated,
            message: "Use JavaScript addEventListener('messageerror') instead"
        )
        public var onMessageError: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('offline') instead")
        public
            var onOffline: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('online') instead")
        public
            var onOnline: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('pageswap') instead")
        public
            var onPageSwap: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('pagehide') instead")
        public
            var onPageHide: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('pagereveal') instead")
        public var onPageReveal: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('pageshow') instead")
        public
            var onPageShow: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('popstate') instead")
        public
            var onPopState: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('resize') instead")
        public
            var onResize: String?

        @available(
            *,
            deprecated,
            message: "Use JavaScript addEventListener('rejectionhandled') instead"
        ) public var onRejectionHandled: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('storage') instead")
        public
            var onStorage: String?

        @available(
            *,
            deprecated,
            message: "Use JavaScript addEventListener('unhandledrejection') instead"
        ) public var onUnhandledRejection: String?

        @available(*, deprecated, message: "Use JavaScript addEventListener('unload') instead")
        public
            var onUnload: String?

        public init(

            )
        {

        }

        @available(
            *,
            deprecated,
            message: "Use JavaScript event listeners instead of HTML event handler attributes"
        ) public init(
            onAfterPrint: String? = nil,
            onBeforePrint: String? = nil,
            onBeforeUnload: String? = nil,
            onBlur: String? = nil,
            onError: String? = nil,
            onFocus: String? = nil,
            onHashChange: String? = nil,
            onLanguageChange: String? = nil,
            onLoad: String? = nil,
            onMessage: String? = nil,
            onMessageError: String? = nil,
            onOffline: String? = nil,
            onOnline: String? = nil,
            onPageSwap: String? = nil,
            onPageHide: String? = nil,
            onPageReveal: String? = nil,
            onPageShow: String? = nil,
            onPopState: String? = nil,
            onResize: String? = nil,
            onRejectionHandled: String? = nil,
            onStorage: String? = nil,
            onUnhandledRejection: String? = nil,
            onUnload: String? = nil
        ) {
            self.onAfterPrint = onAfterPrint
            self.onBeforePrint = onBeforePrint
            self.onBeforeUnload = onBeforeUnload
            self.onBlur = onBlur
            self.onError = onError
            self.onFocus = onFocus
            self.onHashChange = onHashChange
            self.onLanguageChange = onLanguageChange
            self.onLoad = onLoad
            self.onMessage = onMessage
            self.onMessageError = onMessageError
            self.onOffline = onOffline
            self.onOnline = onOnline
            self.onPageSwap = onPageSwap
            self.onPageHide = onPageHide
            self.onPageReveal = onPageReveal
            self.onPageShow = onPageShow
            self.onPopState = onPopState
            self.onResize = onResize
            self.onRejectionHandled = onRejectionHandled
            self.onStorage = onStorage
            self.onUnhandledRejection = onUnhandledRejection
            self.onUnload = onUnload
        }
    }
}

extension WHATWG.HTML.Body.Element {
    @inlinable public static var tag: String { "body" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
