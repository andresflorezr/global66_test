# Architecture Rules

## Pattern
The project follows **Clean Architecture** combined with **MVVM** (Model-View-ViewModel).

## Layers

### 1. Presentation Layer (MVVM)
- **Widgets (View):** UI components using **Material Design**. Responsible for displaying data and handling user interactions.
- **Providers (ViewModel):** Managed by **Riverpod**. Responsible for state management and business logic for the UI.
- **State:** Immutable states defined with **Freezed**.

### 2. Domain Layer
- **Entities:** Pure Dart objects representing the core business data.
- **Repositories (Interfaces):** Abstract definitions of data operations.
- **Use Cases:** Encapsulate specific business rules (optional but recommended for complex logic).

### 3. Data Layer
- **Data Sources:**
  - **Remote:** Uses **Dio** to interact with the **PokeAPI**.
    - List: `GET https://pokeapi.co/api/v2/pokemon`
    - Details: `GET https://pokeapi.co/api/v2/pokemon/{name}`
  - **Local:** Persistence for favorites (if applicable, without backend server).
- **Models:** Data Transfer Objects (DTOs) with `fromJson`/`toJson` (using **Freezed**).
- **Repositories (Implementation):** Concrete implementations of domain repositories.

## Dependency Injection
- Use **Riverpod** for all dependency injection.
