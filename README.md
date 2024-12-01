**Base App Template - Flutter Starter Project**

This repository is the **Base App Template** I created to provide a solid starting point for Flutter projects. It includes a well-organized structure using the MVVM architecture, state management with Riverpod, Firebase integration, and multi-language support with EasyLocalization. Here's what the project includes and what I've worked on:

---

### **Key Features**
1. **Authentication**  
   - Includes Sign In and Sign Up flows.  
   - Firebase Authentication is integrated.  
   - Google Sign-In functionality is implemented.  

2. **Localization**  
   - Supports multiple languages using EasyLocalization.  
   - Localization keys are managed centrally through `locale_keys.g.dart`.  

3. **MVVM Architecture**  
   - Organized to separate business logic from UI using the MVVM pattern.  
   - Enhances code maintainability and scalability.  

4. **State Management with Riverpod**  
   - Reactive and scalable state management for better performance and modularity.  

5. **Reusable Widgets**  
   - Common UI components such as buttons, text fields, custom bottom sheets, and toast messages.  

6. **Firebase Integration**  
   - Fully configured for Firebase Authentication, Realtime Database, Firestore, and Storage.  

7. **Routing**  
   - Declarative navigation implemented using GoRouter.  

8. **Custom Utilities**  
   - Extensions for context, media query, and scaffold messenger for streamlined development.  
   - Mixins for handling form states.  

---

### **Folder Structure Overview**

#### **core**  
- **constants**: Centralized constants for database keys, colors, paddings, and more.  
- **extensions**: Helpful extensions for widget trees and responsive design.  
- **resources**: Utility files for error handling, Firebase helpers, and data states.  
- **utils**: Includes core initialization, localization setup, and mixins for repeated logic.  
- **widgets**: Reusable UI components like custom buttons, toast messages, and bottom sheets.

#### **config**  
- **localization/lang**: Localization configuration and generated files.  
- **routes**: Handles routing logic with GoRouter.  
- **theme**: Contains app themes and extensions for consistent styling.

#### **features**  
- **auth**: Complete authentication module, including models, services, view models, and widgets.  
- **home**: Placeholder for the home module, showcasing the extendability of the project.  
- **splash**: Splash screen setup for the app.

---

### **Packages Used**
- **Firebase**: Core, Authentication, Realtime Database, Firestore, and Storage.  
- **State Management**: Riverpod.  
- **Localization**: EasyLocalization.  
- **Navigation**: GoRouter.  
- **UI Utilities**: Toastification, Skeletonizer, Lottie, Google Fonts.  
- **Testing**: Mockito, Firebase Auth Mocks.  

---

This template is ideal for projects requiring Firebase integration, state management, and localization. Feel free to explore and use the repository for your next project!  

🔗 [GitHub - Base App Template](https://github.com/m-emrec/base_ap.git)  

Let me know your thoughts or how I can improve this template further! 🚀
