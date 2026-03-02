# Testing Rules

## Requirements
- **Unit Testing:** Mandatory. Focus on:
  - **Domain Layer:** Use Cases and Entities logic.
  - **Data Layer:** Repository implementations (mocking Data Sources).
  - **Presentation Layer:** Notifiers/Providers logic.
- **Mocking:** Use `mockito` or `mocktail` to mock external dependencies like `Dio` or Data Sources.

## Scope
- Ensure core business logic (e.g., fetching pokemon, managing favorites) is covered.
