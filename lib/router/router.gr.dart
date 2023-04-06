// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_chat_types/flutter_chat_types.dart' as _i9;
import 'package:slash_design/ui/page/auth/login.dart' as _i5;
import 'package:slash_design/ui/page/auth/verification.dart' as _i6;
import 'package:slash_design/ui/page/chat/chat.dart' as _i4;
import 'package:slash_design/ui/page/chat/rooms.dart' as _i1;
import 'package:slash_design/ui/page/chat/users.dart' as _i2;
import 'package:slash_design/ui/page/home.dart' as _i3;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    RoomsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.RoomsPage(),
      );
    },
    UsersRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.UsersPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ChatPage(
          key: args.key,
          room: args.room,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.LoginPage(
          args.resolver,
          args.router,
          key: args.key,
        ),
      );
    },
    VerificationRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.VerificationPage(
          args.resolver,
          args.router,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.RoomsPage]
class RoomsRoute extends _i7.PageRouteInfo<void> {
  const RoomsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RoomsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoomsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.UsersPage]
class UsersRoute extends _i7.PageRouteInfo<void> {
  const UsersRoute({List<_i7.PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChatPage]
class ChatRoute extends _i7.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i8.Key? key,
    required _i9.Room room,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            room: room,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i7.PageInfo<ChatRouteArgs> page =
      _i7.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.room,
  });

  final _i8.Key? key;

  final _i9.Room room;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, room: $room}';
  }
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    required _i7.NavigationResolver resolver,
    required _i7.StackRouter router,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            resolver: resolver,
            router: router,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<LoginRouteArgs> page =
      _i7.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    required this.resolver,
    required this.router,
    this.key,
  });

  final _i7.NavigationResolver resolver;

  final _i7.StackRouter router;

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{resolver: $resolver, router: $router, key: $key}';
  }
}

/// generated route for
/// [_i6.VerificationPage]
class VerificationRoute extends _i7.PageRouteInfo<VerificationRouteArgs> {
  VerificationRoute({
    required _i7.NavigationResolver resolver,
    required _i7.StackRouter router,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          VerificationRoute.name,
          args: VerificationRouteArgs(
            resolver: resolver,
            router: router,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationRoute';

  static const _i7.PageInfo<VerificationRouteArgs> page =
      _i7.PageInfo<VerificationRouteArgs>(name);
}

class VerificationRouteArgs {
  const VerificationRouteArgs({
    required this.resolver,
    required this.router,
    this.key,
  });

  final _i7.NavigationResolver resolver;

  final _i7.StackRouter router;

  final _i8.Key? key;

  @override
  String toString() {
    return 'VerificationRouteArgs{resolver: $resolver, router: $router, key: $key}';
  }
}
