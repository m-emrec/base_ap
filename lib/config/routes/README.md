# Routes Folder

This folder contains the routing logic for the application. It ensures proper navigation and access control based on user authentication status. Below are the files and their purposes:

## Files

### 1. `router.dart`
- **Purpose**: This file defines the application's main routing structure using `go_router`.
- **Key Features**:
  - Defines named routes for `Splash`, `SignIn`, `SignUp`, and more.
  - Implements the `AppRouter` class, which listens to authentication state changes to rebuild the routing configuration dynamically.
  - Manages initial and redirection paths for authenticated and non-authenticated users.

### 2. `auth_checker.dart`
- **Purpose**: Handles route redirection based on the user's authentication state.
- **Key Features**:
  - Implements the `AuthChangeNotifier` class, which notifies the `GoRouter` to refresh when authentication state changes.
  - Provides the `authChecker` function to check user authentication and redirect accordingly.
  - Ensures that:
    - Non-authenticated users are redirected to the `SignIn` page unless on the `SignUp` page.
    - Authenticated users are redirected to the home page if they attempt to access authentication routes.

## Usage

- **Integration**: The `AppRouter` class can be instantiated and used across the app to manage navigation seamlessly.
- **Customization**: New routes can be added by defining them in the `Routes` enum and updating the routing logic in `router.dart`.

## Notes

- Ensure that any new routes requiring authentication use the `authChecker` function for proper access control.
- Keep routes organized and maintain a consistent naming convention.

