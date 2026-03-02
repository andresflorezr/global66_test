# Riverpod Rules

- **Generator:** Use **Riverpod Generator** (`@riverpod` annotation) for all providers.
- **Async Handling:** Use `AsyncValue` to handle loading, error, and data states for API calls.
- **State Management:**
  - Prefer `Notifier` or `AsyncNotifier` (via `@riverpod`) over legacy providers.
  - Avoid `StateProvider` or `ChangeNotifierProvider` unless strictly necessary.
- **Structure:**
  - Keep providers closely related to their usage or layer (e.g., Repository providers in Data, Controller/ViewModel providers in Presentation).
- **Freezed:** Integrate `Freezed` for state immutability.
