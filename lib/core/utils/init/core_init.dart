part of "../../../main.dart";

/// Core initialization
///
/// This class is responsible for initializing the core functionalities of the app
///
/// This class is called in the main function before the app is run
///
/// This class initializes the following:
/// - WidgetsFlutterBinding
/// - Firebase
/// - Localization
class _CoreInit {
  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await _LocalizationInit().initLocale();
  }
}
