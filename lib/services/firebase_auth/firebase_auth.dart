import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:metime/Widgets/custom_snackbar.dart';
import 'package:metime/models/appuser.dart';

class FirebaseAuthServices {
  //save user data to firebase
  static Future saveUserDataToFirebase({
    required AppUser appUser,
    required String password,
  }) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        await user
            .updateDisplayName('${appUser.firstName} ${appUser.lastName}');
        await user.updateEmail(appUser.email);
        await user.updatePassword(password);
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set(
              appUser.toMap(),
            );
      }
    } catch (e) {
      showCustomSnackBar(e.toString());
    }
  }

  //Sign up with email and password
  static Future<String> signUpWithEmailAndPassword({
    required AppUser appUser,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: appUser.email, password: password);
      if (userCredential.user != null) {
        await saveUserDataToFirebase(appUser: appUser, password: password);
      }
      return 'success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'weak-password';
      } else if (e.code == 'email-already-in-use') {
        return 'email-already-in-use';
      }
      return e.code;
    }
  }

  //Sign in with email and password
  static Future<String> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    String? role;
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        try {
          await FirebaseFirestore.instance
              .collection('users')
              .doc(userCredential.user!.uid)
              .get()
              .then((value) {
            role = value.data()!['role'];
            return role;
          });
        } catch (e) {
          role = null;
          return e.toString();
        }
      }
      role ??= 'success';
      return role!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'user-not-found';
      } else if (e.code == 'wrong-password') {
        return 'wrong-password';
      }
      return e.code;
    }
  }
}
