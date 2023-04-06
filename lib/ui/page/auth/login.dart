import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_design/object/state/auth.dart';
import 'package:slash_design/router/router.dart';

import '../../../router/router.gr.dart';
import '../../scaffolding.dart';

@RoutePage()
class LoginPage extends ConsumerWidget {
  const LoginPage(this.resolver, this.router, {Key? key}) : super(key: key);

  final NavigationResolver resolver;
  final StackRouter router;

  void verifyEmail(NavigationResolver resolver, StackRouter router) {
    router.replace(VerificationRoute(
      resolver: resolver,
      router: router,
    ));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    TextEditingController textc = TextEditingController();
    return Scaffolding(
        body: SignInScreen(
      providers: [EmailAuthProvider()],
      actions: [
        // ForgotPasswordAction((context, email) {
        //   Navigator.pushNamed(
        //     context,
        //     '/forgot-password',
        //     arguments: {'email': email},
        //   );
        // }),
        // VerifyPhoneAction((context, _) {
        //   Navigator.pushNamed(context, '/phone');
        // }),
        AuthStateChangeAction<SignedIn>((context, state) {
          if (!state.user!.emailVerified) {
            verifyEmail(resolver, router);
          } else {
            resolver.next(true);
          }
        }),
        AuthStateChangeAction<UserCreated>((context, state) async {
          await FirebaseChatCore.instance.createUserInFirestore(
            User(
              firstName: state.credential.user?.email,
              lastName: 'Doe',
              id: state.credential.user!.uid,
              imageUrl: 'https://i.pravatar.cc/300',
              role: Role.user,
            ),
          );
          await FirebaseFirestore.instance
              .collection('rooms')
              .doc('GuGfgPWoffbZSfO1IDzH')
              .update({
                'userIds': FieldValue.arrayUnion([state.credential.user!.uid])
              })
              .then((value) => print("Room Updated"))
              .catchError((error) => print("Failed to update room: $error"));
          if (!state.credential.user!.emailVerified) {
            verifyEmail(resolver, router);
          } else {
            resolver.next(true);
          }
        }),
        AuthStateChangeAction<CredentialLinked>((context, state) {
          if (!state.user.emailVerified) {
            verifyEmail(resolver, router);
          } else {
            resolver.next(true);
          }
        }),
        // mfaAction,
        // EmailLinkSignInAction((context) {
        //   Navigator.pushReplacementNamed(context, '/email-link-sign-in');
        // }),
      ],
    ));
  }
}
