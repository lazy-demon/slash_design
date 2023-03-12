import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_design/object/state/auth.dart';
import '../router/router.dart';

class AuthGuard extends AutoRedirectGuard {
  final WidgetRef auth;

  AuthGuard(this.auth) {
    print("construct");
    auth.listen(authStatusProvider, (previous, next) {
      print("listen");
      if (previous != next) {
        print("reevaluate");
        reevaluate();
      }
    });
  }

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    print("onNavigation");
    print(auth.watch(authStatusProvider).toString());
    if (auth.read(authStatusProvider) != null) {
      print("true");
      resolver.next(true);
    } else {
      print("redirect");
      redirect(const LoginRoute(), resolver: resolver);
    }
  }

  @override
  Future<bool> canNavigate(RouteMatch route) {
    print("canNavigate");
    return Future.value(true);
  }
}
