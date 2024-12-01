**Base App Template - Flutter Starter Project**

This repository is the **Base App Template** I created to provide a solid starting point for Flutter projects. It includes a well-organized structure using the MVVM architecture, state management with Riverpod, Firebase integration, and multi-language support with EasyLocalization. Here's what the project includes and what I've worked on:

---

### **What the Project Includes**

1. **Authentication (Sign In & Sign Up)**  
   - I implemented **Sign In** and **Sign Up** pages with complete functionality.  
   - Integrated **Firebase Authentication** for user login/logout.  
   - Added **Google Sign-In** support for seamless authentication.  

2. **Localization (Multi-language Support)**  
   - Added multi-language support using **EasyLocalization**.  
   - Created a `locale_keys.g.dart` file for easily managing localized strings.  

3. **Clean and Modular File Structure**  
   - Designed the project with **core** and **features** layers to ensure scalability and maintainability.  
   - Organized reusable widgets, extensions, and helper files for efficient development.  

4. **State Management with Riverpod**  
   - Implemented **Riverpod** for state management to ensure clean and reactive code.

5. **Firebase Integration**  
   - Set up **Firebase Core** for initializing Firebase.  
   - Configured **Firebase Realtime Database (RTD)** and **Firestore** for database operations.  
   - Integrated **Firebase Storage** for managing media files.  

6. **Theming & Styling**  
   - Centralized theming with predefined styles for colors, paddings, and text.  
   - Included theme extensions for easy customization.  

7. **Routing and Navigation**  
   - Used **GoRouter** for declarative navigation and clean routing.

8. **Utility Features**  
   - Integrated **Toastification** for custom toast messages.  
   - Added support for loading skeletons using **Skeletonizer**.  
   - Included **Google Fonts** for consistent typography.  
   - Added **EasyLocalization** for multi-language support.

---

### **Packages Used**

#### Firebase Integration
- `firebase_core`, `firebase_auth`, `firebase_database`, `cloud_firestore`, `firebase_storage`

#### State Management
- `flutter_riverpod`

#### Navigation
- `go_router`

#### UI Enhancements
- `gap`, `toastification`, `skeletonizer`, `google_fonts`, `lottie`

#### Utilities
- `email_validator`, `image_picker`, `cached_network_image`

---

### **Folder Structure**

1. **core**  
   - Contains constants, extensions, resources, and shared utilities.  

2. **config**  
   - Houses localization and routing configurations.  

3. **features**  
   - Modular features like authentication and home, separated by MVVM layers.  

4. **theme**  
   - Includes app-wide themes and extensions.  

---

This project serves as a template to kickstart your Flutter applications with best practices in architecture and design. Feel free to clone, customize, and expand on it! 🚀
