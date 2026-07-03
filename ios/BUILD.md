# iOS Build Guide — J26

Requirements: a Mac, Xcode 16, and a physical iPhone (push notifications don't work in the simulator).

---

## 1. Install Xcode 16

The App Store version requires macOS 26.2+. If you're on macOS 15 (Sequoia), download it manually:

- Go to **developer.apple.com/download/all/** (free Apple ID login required)
- Search "Xcode 16" and download `Xcode_16.xip`
- Double-click the `.xip` to extract, then move `Xcode.app` to `/Applications`
- Launch Xcode and install **iOS 18.0** platform support when prompted

## 2. Get the code

```
git clone https://github.com/Scouterna/j26-app-native.git
cd j26-app-native
git checkout ios-fcm-push-notifications
```

## 3. Add the Firebase config file

- Go to Firebase Console → J26-messaging → ⚙️ Project settings → Your apps → iOS (`se.j26.app`) → **Download GoogleService-Info.plist**
- Place the file at `ios/J26/GoogleService-Info.plist`

(This file is gitignored — it contains private credentials and must be added manually.)

## 4. Install CocoaPods and dependencies

```
brew install cocoapods
cd ios
pod install
```

## 5. Open the project in Xcode

```
open ios/J26.xcworkspace
```

Always use `.xcworkspace`, never `.xcodeproj`.

## 6. Configure signing

1. In Xcode, click the **J26** target in the file navigator
2. Go to **Signing & Capabilities** tab
3. Under **Team**, select your Apple ID (add it via **Add an Account...** if needed)

## 7. Enable Background Modes

Still in **Signing & Capabilities**:

1. Click **+ Capability** → add **Background Modes**
2. Check **Remote notifications**

## 8. Trust your iPhone

1. Connect your iPhone via USB
2. Unlock the phone — tap **Trust This Computer** when prompted
3. Wait for Xcode to finish **"Downloading iOS 18.0..."** (one-time, takes a few minutes)
4. Your iPhone will appear in the run destination dropdown at the top of Xcode

## 9. Build and run

Select your iPhone in the top bar, then hit **▶**.

Watch the Xcode console for:
```
Firebase registration token: <token>
```

This confirms push notifications are wired up correctly.

## 10. Test a push notification

- Open Firebase Console → **J26-messaging** → Messaging → Send test message
- Paste the FCM token from the Xcode console
- Trigger the notification permission prompt from within the app UI first
