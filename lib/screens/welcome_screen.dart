import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final AuthService _authService = AuthService();
  Future<void> testSignup() async {
    try {
      await _authService.signUp("testuser456@example.com", "123456");

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("User created successfully")));
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Error: $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rollio")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to Rollio",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Icon(Icons.school, size: 80, color: Colors.blue),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: testSignup,
                child: Text("Test Firebase Signup"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
