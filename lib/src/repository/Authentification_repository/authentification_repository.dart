import 'package:firebase_1/src/features/screens/welcome_screen/welcome.dart';
import 'package:firebase_1/src/repository/Authentification_repository/Exception/signup_email_password_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../features/controller/prefences.dart';

import '../../features/screens/Card_screen/my-card.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();


  Preferences preferences = new Preferences();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _InitialScreen);
  }

  void _InitialScreen(User? user) {
    if (user != null) {
      Get.off(() => const MyCard());
    } else {
      Get.off(() => const WelcomeScreen());
    }
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const MyCard()) : Get
          .off(() => const WelcomeScreen());
      await preferences.saveCredentials(email, password);
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION  - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex =  SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      await preferences.saveCredentials(email, password);
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION  - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex =  SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      await preferences.clearCredentials();
    } catch (_) {}
  }
}