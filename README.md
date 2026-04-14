# J26

Native app-wrappers for the J26 PWA (Progressive Web App).

The apps are generated using [PWABuilder](https://www.pwabuilder.com/) and customized to support native features like push notifications and geolocation.

## Structure

```
J26/
├── ios/        — iOS app (Swift, WKWebView)
├── android/    — Android app (Gradle, WebView)
└── src/        — PWA source (excluded from git)
```

## iOS

The iOS app wraps the PWA in a WKWebView with support for:
- Push notifications (Firebase Cloud Messaging)
- Geolocation
- Universal links
- Pull to refresh

### Setup

1. Open `ios/J26.xcworkspace` in Xcode
2. Run `pod install` in the `ios/` directory if needed
3. Update `ios/J26/Settings.swift` with your configuration
4. Build and run

## Android

The Android app wraps the PWA in a WebView.

### Setup

1. Open the `android/` folder in Android Studio
2. Build and run

## PWABuilder

Both apps were initially generated with [PWABuilder](https://www.pwabuilder.com/), which packages a PWA into native app shells for iOS and Android.
