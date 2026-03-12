# flutter_core_template

A new Flutter project.

## Getting Started

##
flutter version : 3.36.6

🏗 Architecture Overview

This project follows the Clean Architecture pattern, separating the code into three distinct layers:

Data Layer: Repositories, Data Sources (Remote/Local), and Models (DTOs).

Domain Layer: The heart of the application. Contains Entities, Use Cases, and Repository Interfaces.

Presentation Layer: UI Components (Widgets) and State Management logic


🛠 Core Features & Resources
This boilerplate comes pre-configured with essential tools to jumpstart your development:

State Management: [Bloc]

Dependency Injection: Powered by get_it and injectable.

Networking: Type-safe API calls using dio and retrofit.

Local Storage: Cached data handling with flutter_secure_storage or shared_preferences.

Functional Programming: Error handling using dartz (Either Left/Right).

Code Generation: Pre-configured build_runner for Freezed and JSON Serializable.

Internationalization: app_localization
