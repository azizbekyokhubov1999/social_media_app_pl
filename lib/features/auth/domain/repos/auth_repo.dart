
/*
Auth Repository - ushbu ilova uchun bajarilishi mumkin bo'lgan methodlarni belgilaydi
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_media_app_pl/features/auth/domain/entities/app_user.dart';

abstract class AuthRepo {

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;


  Future<AppUser?> loginWithEmailPassword(String email, String password) async {
    try {
      // attempt sign in
      UserCredential userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      //create user
      AppUser user = AppUser(
          uid: userCredential.user!.uid,
          email: email,
          name: ""
      );
      //return user
      return user;

    }catch(e) {
      throw Exception('Login failed: $e');
    }
  }


  Future<AppUser?> registerWithEmailPassword(String name, String email, String password) async {
    try {
      // attempt sign up
      UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      //create user
      AppUser user = AppUser(
          uid: userCredential.user!.uid,
          email: email,
          name: name
      );
      //return user
      return user;

    }catch(e) {
      throw Exception('Register failed: $e');
    }
  }


  Future<void> logout() async {
    await firebaseAuth.signOut();
  }
  Future<AppUser?> getCurrentUser() async {
    // get current logged in user from firebase
    final firebaseUser = firebaseAuth.currentUser;

    //user not logged in
    if(firebaseUser == null){
      return null;
    }

    //user exists
    return AppUser(
        uid: firebaseUser.uid,
        email: firebaseUser.email!,
        name: ''
    );
  }

}