import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:slash_design/user.dart';

part 'auth.freezed.dart';
part 'auth.g.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState.unauthenticated(String data) = Unauthenticated;
  factory AuthState.authenticated(String data) = Authenticated;
  factory AuthState.loading(String data) = Loading;
  factory AuthState.error(String data) = Error;
}

@riverpod
class AuthStatus extends _$AuthStatus {
  @override
  AuthState build() {
    return (ref.watch(userProvider).value == null)
        ? AuthState.unauthenticated(ref.read(userProvider).value.toString())
        : AuthState.authenticated(ref.read(userProvider).value.toString());
  }

  Future<void> signInAnonymously() async {
    state = AuthState.loading("sign in");
    try {
      await FirebaseAuth.instance.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      state = AuthState.error(e.code);
      print(e.message);
    }
  }

  Future<void> signOut() async {
    state = AuthState.loading("sign out");
    try {
      // sign out from firebase and navigate to login page
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      state = AuthState.error(e.code);
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    GoogleAuthProvider googleProvider = GoogleAuthProvider();

    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

    return await FirebaseAuth.instance.signInWithPopup(googleProvider);
  }

  // AuthState status() {
  //   return state;
  // }
}

// ! $ flutter pub run build_runner watch --delete-conflicting-outputs