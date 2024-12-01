// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:fake_async/fake_async.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:toastification/toastification.dart';

import 'package:base_ap/core/resources/data_state.dart';
import 'package:base_ap/features/auth/model/credentials.dart';
import 'package:base_ap/features/auth/providers/provider.dart';
import 'package:base_ap/features/auth/service/auth_service.dart';
import 'package:base_ap/features/auth/view%20model/auth_view_model.dart';
import 'package:base_ap/features/auth/view/auth_barrel.dart';
import 'package:base_ap/features/auth/view/sign_in.dart';
import 'package:base_ap/features/home/view/home.dart';
import 'package:base_ap/main.dart';

import 'widget_test.mocks.dart';

@GenerateMocks([
  AuthService,
])
void main() {
  late MockAuthService mockAuthService;
  late AuthViewModel viewModel;
  group(
    'Counter increments smoke test',
    () {
      setUp(() async {
        // Initialize Firebase with a mocked instance
        TestWidgetsFlutterBinding.ensureInitialized();

        // final container = ProviderContainer();
        mockAuthService = MockAuthService();
        viewModel = AuthViewModel(authService: mockAuthService);
        // await Firebase.initializeApp();
        TestWidgetsFlutterBinding.ensureInitialized();
        MockFi.initializeApp(); // Mocked Firebase initialization
      });

      testWidgets("Sign in with valid credentials updates state correctly",
          (WidgetTester tester) async {
        await tester.pumpWidget(
          ToastificationWrapper(
            child: MaterialApp(
              home: Scaffold(
                body: Builder(
                  builder: (context) {
                    return SignIn(); // Replace with the widget you are testing
                  },
                ),
              ),
            ),
          ),
        );

        final Credentials credentials = Credentials(
          email: "m.emrec45@gmail.com",
          password: "123456",
        );
        MockFirebaseAuth mockFirebaseAuth = MockFirebaseAuth();
        MockUser mockUser = MockUser(
          uid: 'uid',
          email: 'email',
        );
        final user = await mockFirebaseAuth.signInWithEmailAndPassword(
          email: credentials.email,
          password: credentials.password,
        );
        // Mock AuthService behavior

        // await viewModel.signInWithEmail(credentials);
        // Assert the user
        expect(user.user?.email, "asd@g.com");
        await tester.pumpAndSettle();
        // Verify AuthService was called
        // verify(mockAuthService.signInWithEmail(credentials: credentials))
        //     .called(1);
      });
    },
  );
}
