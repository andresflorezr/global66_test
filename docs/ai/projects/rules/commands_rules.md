# Command Rules

## Code Generation
The project uses **Freezed** and **Riverpod Generator**. Run `build_runner` to generate code:

**One-time build:**
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

**Watch mode (auto-rebuild):**
```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Testing
**Run all tests:**
```bash
flutter test
```
