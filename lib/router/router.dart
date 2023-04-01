import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../ui/page/chat/users.dart';
import '../ui/page/chat/rooms.dart';
import '../ui/page/chat.dart';
import '../ui/page/home.dart';
import '../ui/page/login.dart';
import 'guard/auth.dart';
import 'router.gr.dart';

@AutoRouterConfig(
    generateForDir: ['lib'],
//  deferredLoading: false,
    replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends $AppRouter {
  final WidgetRef ref;

  AppRouter(this.ref);

  // @override
  // RouteType get defaultRouteType => RouteType.custom(
  //       transitionsBuilder: TransitionsBuilders.noTransition,
  //       reverseDurationInMilliseconds: 0,
  //     );

  @override
  late final List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, path: '/home'),
    // AutoRoute(page: EmailVerificationScreen, path: '/verify-email'),
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: UsersRoute.page, path: '/', guards: [AuthGuard(ref)]),
    AutoRoute(page: RoomsRoute.page, path: '/rooms'),
    AutoRoute(page: ChatRoute.page, path: '/chat'),
  ];
}
