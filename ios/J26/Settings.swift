import WebKit

struct Cookie {
    var name: String
    var value: String
}

let gcmMessageIDKey = "gcm.message_id"

// URL for first launch
let rootUrl = URL(string: "https://app.jamboree.se")!

// allowed origin is for what we are sticking to pwa domain
// This should also appear in Info.plist
let allowedOrigins: [String] = ["app.dev.j26.se", "app.jamboree.se"]

// auth origins will open in modal and show toolbar for back into the main origin.
// These should also appear in Info.plist
let authOrigins: [String] = ["id.dev.j26.se", "j26.scoutid.se"]
// allowedOrigins + authOrigins <= 10

let platformCookie = Cookie(name: "app-platform", value: "iOS App Store")

// UI options
let displayMode = "standalone" // standalone / fullscreen.
let adaptiveUIStyle = true     // iOS 15+ only. Change app theme on the fly to dark/light related to WebView background color.
let overrideStatusBar = false   // iOS 13-14 only. if you don't support dark/light system theme.
let statusBarTheme = "dark"    // dark / light, related to override option.
let pullToRefresh = false    // Enable/disable pull down to refresh page
