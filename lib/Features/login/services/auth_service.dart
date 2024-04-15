import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        // User cancelled the sign-in operation
        print('Sign-in operation cancelled by the user.');
        return null;
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } on PlatformException catch (e) {
      if (e.code == 'sign_in_failed') {
        // Handle sign-in failure
        print('Error signing in with Google: ${e.message}. Please try again later.');
        return null;
      } else {
        // Handle other PlatformExceptions
        print('An error occurred: ${e.message}');
        return null;
      }
    } catch (e) {
      // Handle other exceptions
      print('Error signing in with Google: $e');
      return null;
    }
  }
}
