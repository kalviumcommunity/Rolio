import 'package:firebase_auth/firebase_auth.dart';

/// Service class responsible for handling Firebase Authentication operations
class AuthService {
  // FirebaseAuth instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// Registers a new user using email and password
  Future<UserCredential> signUp(String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential;
    } catch (e) {
      rethrow;
    }
  }

  /// Signs in an existing user
  Future<UserCredential> signIn(String email, String password) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential;
    } catch (e) {
      rethrow;
    }
  }

  /// Logs out the currently signed-in user
  Future<void> signOut() async {
    await _auth.signOut();
  }
}