# 🎁 Reward Campaigns

### 📑 Table of Contents
- [Setup Instructions](#setup-instructions)
- [Architecture Explanation](#architecture-explanation)
- [Demo Video](#demo-video)

## Setup Instructions

Follow these steps to get the app running on your local machine:

### 📱 1. Install Flutter

If you haven’t already, install Flutter by following the instructions on the official site:  
👉 https://flutter.dev/docs/get-started/install

Make sure Flutter is properly installed by running:

```bash
flutter doctor
```
### 📂 2. Clone the Project
Use Git to download the project files to your computer.
```bash
git clone https://github.com/PhatnthiS/reward_campaigns.git
cd reward_campaigns
```
### 📦 3. Install Dependencies
Use Flutter’s package manager to install all dependencies listed in pubspec.yaml.
```bash
flutter pub get
```

### 🚀 4. Run the App
Make sure you have a device connected or an emulator running, then use:
```bash
flutter run
```

## Architecture Explanation

### 1️⃣ **Core Module**
Holds reusable and non-feature-specific code shared across the app.

- `constants/`, `enums/`, `theme/` → App-wide constants and UI styles
- `localization/` → Internationalization and language handling
- `routing/` → Centralized navigation logic
- `utils/` → General-purpose helper functions
- `widgets/` → Shared UI components

### 2️⃣ **Data Layer**
Implements the repositories defined in the domain layer.

- `repositories/` → Implementation of repository interfaces (API calls, local database)

### 3️⃣ **Domain Layer**
Defines the **business rules** and **core logic** of the app.
- `models/` → Entities (data classes)
- `repositories/` → Abstract repository interfaces
- `usecases/` → Application-specific operations

### 4️⃣ **Presentation Layer (Features)**
Each feature is self-contained with its own **UI**, **State Management**
- `bloc/` → Business Logic Components (Events, States, Bloc classes)
- `presentation/` → Screens and widgets for that feature


### 🔄 Data Flow

- User interacts with the UI (e.g., taps a button).
- UI triggers an event in a BLoC.
- BLoC calls a Use Case from the Domain Layer.
- Use Case talks to a Repository (abstracted).
- Repository implementation in the Data Layer uses local `.json` files and SharedPreferences to simulate API and database behavior.
- Data is passed back up through the layers.
- BLoC emits a new state → UI updates.

##  Demo Video

Watch the working demo of the app here:  
📽️ [Click to watch on Google Drive](https://drive.google.com/file/d/1BDS6wfPy5wl-9DirdZ94QObrk0osQ3dH/view?usp=sharing)
