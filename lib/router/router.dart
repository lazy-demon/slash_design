import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:slash_design/router/guard/auth.dart';
import 'package:slash_design/ui/page/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen|Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, guards: [AuthGuard]),
    AutoRoute(page: SignInScreen, path: '/login'),
    AutoRoute(page: EmailVerificationScreen, path: '/email-verification'),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter({required AuthGuard authGuard}) : super(authGuard: authGuard);
}
