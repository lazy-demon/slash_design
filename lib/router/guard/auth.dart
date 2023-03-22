import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_design/object/state/auth.dart';
import '../router.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

class AuthGuard extends AutoRedirectGuard {
  final WidgetRef auth;

  AuthGuard(this.auth) {
    auth.listen(authStatusProvider, (previous, next) {
      if ((previous != next) && (next == null)) {
        reevaluate();
      }
    });
  }

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    redirect(
        SignInRoute(
          email: "jefdayt@gmail.com",
          providers: [EmailAuthProvider()],
          actions: [
            AuthStateChangeAction<SignedIn>((context, state) {
              if (!state.user!.emailVerified) {
                router.replace(EmailVerificationRoute(
                  actions: [
                    EmailVerifiedAction(() {
                      router.replace(const HomeRoute());
                    }),
                    AuthCancelledAction((context) {
                      FirebaseUIAuth.signOut(context: context);
                      router.replace(SignInRoute());
                    }),
                  ],
                ));
              } else {
                resolver.next(true);
              }
            }),
          ],
        ),
        resolver: resolver);
  }

  @override
  Future<bool> canNavigate(RouteMatch route) {
    return Future.value(false);
  }
}
