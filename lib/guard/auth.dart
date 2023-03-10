import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_design/state/auth.dart';
import '../router/router.dart';

class AuthGuard extends AutoRedirectGuard {
  final WidgetRef auth;

  AuthGuard(this.auth) {
    print("construct");
    auth.listen(authStatusProvider, (previous, next) {
      print("listen");
      if (previous != next && (next is! Loading)) {
        print("reevaluate");
        reevaluate();
      }
    });
  }

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    print("onNavigation");
    if (auth.read(authStatusProvider) is Authenticated) {
      resolver.next(true);
    } else {
      redirect(const LoginRoute(), resolver: resolver);
    }
  }

  @override
  Future<bool> canNavigate(RouteMatch route) {
    print("canNavigate");
    return Future.value(true);
  }
}
