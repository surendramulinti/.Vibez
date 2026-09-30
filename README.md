# .Vibez — Android Flutter Starter

This is a fresh `.Vibez` Flutter starter project for the Android app.

## Current V1
- Splash screen
- Login screen
- Home screen
- Rooms screen
- Messages placeholder
- Notifications placeholder
- Profile screen
- Create-room UI placeholder
- Clean navigation foundation

## Important
This starter intentionally does NOT contain Firebase credentials or Agora credentials.
Those are added after the first Android build is working.

## Build
On a machine/cloud environment with Flutter installed:

```bash
flutter pub get
flutter run
```

For Android release:

```bash
flutter build appbundle --release
```

The Android application id is intended to be:
`com.vibez.app`

## Next stages
1. Firebase Authentication
2. Firestore profiles/rooms
3. Agora live audio
4. Seats and host controls
5. Chat
6. Gifts/coins
7. Music
8. PK and games
9. Notifications
10. Admin and payments
