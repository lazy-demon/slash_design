import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_firebase_chat_core/flutter_firebase_chat_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_design/object/state/auth.dart';
import '../router.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

import '../router.gr.dart';

class AuthGuard extends AutoRedirectGuard {
  final WidgetRef ref;

  AuthGuard(this.ref) {
    ref.listen(authStatusProvider, (previous, next) {
      if ((previous != next) && (next == null)) {
        reevaluate();
      }
    });
  }

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    redirect(LoginRoute(resolver: resolver, router: router),
        resolver: resolver);
  }

  @override
  Future<bool> canNavigate(RouteMatch route) {
    return Future.value(false);
  }
}
