// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class AuthService {
//   Future<UserCredential?> signInWithGoogle() async {
//     try {
//       // Trigger the Google sign-in flow
//       final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

//       // Handle the case when user cancels the sign-in operation
//       if (gUser == null) {
//         print('Sign-in operation cancelled by the user.');
//         return null;
//       }

//       // Get the authentication credentials
//       final GoogleSignInAuthentication gAuth = await gUser.authentication;

//       // Create a credential from the access token and ID token
//       final credential = GoogleAuthProvider.credential(
//         accessToken: gAuth.accessToken,
//         idToken: gAuth.idToken,
//       );

//       // Sign in to Firebase with the credential
//       return await FirebaseAuth.instance.signInWithCredential(credential);
//     } catch (e) {
//       // Handle any errors that occur during the sign-in process
//       print('Error signing in with Google: $e');
//       return null;
//     }
//   }
// }

// // Example of how to call the signInWithGoogle method
// // onPressed: () async {
// //   UserCredential? userCredential = await AuthService().signInWithGoogle();
// //   if (userCredential != null) {
// //     // Sign-in successful, navigate to the next screen
// //     GoRouter.of(context).push(AppRouter.kHomeView);
// //   } else {
// //     // Sign-in failed, handle accordingly (e.g., show error message)
// //   }
// // },
