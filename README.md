# 🛒 Marketia - Complete E-Commerce Flutter App

Marketia is a comprehensive and modular Flutter-based e-commerce application built using Clean Architecture and the BLoC pattern. The app integrates with a RESTful API backend to handle all operations including authentication, product management, cart, and user profiles. It is designed to deliver a seamless, responsive, and user-friendly shopping experience.

---

## 📦 Features Overview

### 👤 User Experience
- Splash screen with animation
- Interactive onboarding flow
- Login screen with form validation
- OTP-based verification
- Persistent login using token-based auth

### 🛍️ Core Shopping Features
- Product listing by categories
- Search functionality
- Product details with images, price, and description
- Add to cart / remove from cart
- Favorite/unfavorite products
- Place orders (with order summary)

### 👤 User Account
- User profile view and update
- View order history
- Manage favorites
- Logout with token cleanup

### 💡 App Functionality
- BLoC for state management (flutter_bloc)
- CopyWith pattern to ensure state immutability
- REST API integration for all data flows
- Local caching via Hive (offline support)
- Modular design with reusable widgets
- Responsive layout for multiple screen sizes

---

## 🧱 Clean Architecture Breakdown

Marketia is built with a scalable and testable architecture:

Each feature has:
- `bloc/` for BLoC + events + states
- `data/` for API models and services
- `pages/` for UI screens
- `widgets/` for UI components

---

## 🌐 API Integration

- Uses custom-built RESTful API
- All requests handled via `Dio` or `http`
- Authentication via token-based system
- Headers and interceptors handled globally
- Structured models with JSON serialization

### 📡 Example API Endpoints
- `POST /login`
- `POST /verify-otp`
- `GET /products`
- `POST /add-to-cart`
- `GET /user/profile`
- etc.

---

## 🧠 State Management with BLoC

- Each feature has its own BLoC structure.
- States are managed immutably using `copyWith`.
- Events trigger API calls or local operations.
- Example BLoC flow:
  - `AddToCartPressed` → calls API → emits `AddToCartSuccessState`
- All BLoCs are injected using `BlocProvider` and disposed accordingly.

---

## 🗃️ Local Storage (Hive)

- Token saved securely for persistent login
- User preferences (like theme) cached
- Offline product data optionally cached

---

## 🚀 Getting Started

### ✅ Prerequisites
- Flutter 3.x
- Android Studio / VS Code
- REST API backend (running or mocked)

### 🛠️ Installation

```bash
git clone https://github.com/your-username/marketia.git
cd marketia
flutter pub get


