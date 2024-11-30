import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

///
class Home extends StatefulWidget {
  /// Home Screen
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => FirebaseAuth.instance.signOut(),
            child: const Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}
