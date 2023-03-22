// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SignInScreen(
          key: args.key,
          providers: args.providers,
          auth: args.auth,
          headerMaxExtent: args.headerMaxExtent,
          headerBuilder: args.headerBuilder,
          sideBuilder: args.sideBuilder,
          oauthButtonVariant: args.oauthButtonVariant,
          desktopLayoutDirection: args.desktopLayoutDirection,
          resizeToAvoidBottomInset: args.resizeToAvoidBottomInset,
          showAuthActionSwitch: args.showAuthActionSwitch,
          email: args.email,
          subtitleBuilder: args.subtitleBuilder,
          footerBuilder: args.footerBuilder,
          loginViewKey: args.loginViewKey,
          actions: args.actions,
          breakpoint: args.breakpoint,
          styles: args.styles,
        ),
      );
    },
    EmailVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<EmailVerificationRouteArgs>(
          orElse: () => const EmailVerificationRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: EmailVerificationScreen(
          key: args.key,
          auth: args.auth,
          actions: args.actions,
          headerBuilder: args.headerBuilder,
          headerMaxExtent: args.headerMaxExtent,
          sideBuilder: args.sideBuilder,
          desktopLayoutDirection: args.desktopLayoutDirection,
          breakpoint: args.breakpoint,
          actionCodeSettings: args.actionCodeSettings,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
          guards: [authGuard],
        ),
        RouteConfig(
          SignInRoute.name,
          path: '/login',
        ),
        RouteConfig(
          EmailVerificationRoute.name,
          path: '/email-verification',
        ),
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [SignInScreen]
class SignInRoute extends PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    Key? key,
    List<AuthProvider<AuthListener, AuthCredential>>? providers,
    FirebaseAuth? auth,
    double? headerMaxExtent,
    Widget Function(
      BuildContext,
      BoxConstraints,
      double,
    )?
        headerBuilder,
    Widget Function(
      BuildContext,
      BoxConstraints,
    )?
        sideBuilder,
    OAuthButtonVariant? oauthButtonVariant = OAuthButtonVariant.icon_and_text,
    TextDirection? desktopLayoutDirection,
    bool? resizeToAvoidBottomInset = true,
    bool? showAuthActionSwitch,
    String? email,
    Widget Function(
      BuildContext,
      AuthAction,
    )?
        subtitleBuilder,
    Widget Function(
      BuildContext,
      AuthAction,
    )?
        footerBuilder,
    Key? loginViewKey,
    List<FirebaseUIAction> actions = const [],
    double breakpoint = 800,
    Set<FirebaseUIStyle>? styles,
  }) : super(
          SignInRoute.name,
          path: '/login',
          args: SignInRouteArgs(
            key: key,
            providers: providers,
            auth: auth,
            headerMaxExtent: headerMaxExtent,
            headerBuilder: headerBuilder,
            sideBuilder: sideBuilder,
            oauthButtonVariant: oauthButtonVariant,
            desktopLayoutDirection: desktopLayoutDirection,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            showAuthActionSwitch: showAuthActionSwitch,
            email: email,
            subtitleBuilder: subtitleBuilder,
            footerBuilder: footerBuilder,
            loginViewKey: loginViewKey,
            actions: actions,
            breakpoint: breakpoint,
            styles: styles,
          ),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    this.providers,
    this.auth,
    this.headerMaxExtent,
    this.headerBuilder,
    this.sideBuilder,
    this.oauthButtonVariant = OAuthButtonVariant.icon_and_text,
    this.desktopLayoutDirection,
    this.resizeToAvoidBottomInset = true,
    this.showAuthActionSwitch,
    this.email,
    this.subtitleBuilder,
    this.footerBuilder,
    this.loginViewKey,
    this.actions = const [],
    this.breakpoint = 800,
    this.styles,
  });

  final Key? key;

  final List<AuthProvider<AuthListener, AuthCredential>>? providers;

  final FirebaseAuth? auth;

  final double? headerMaxExtent;

  final Widget Function(
    BuildContext,
    BoxConstraints,
    double,
  )? headerBuilder;

  final Widget Function(
    BuildContext,
    BoxConstraints,
  )? sideBuilder;

  final OAuthButtonVariant? oauthButtonVariant;

  final TextDirection? desktopLayoutDirection;

  final bool? resizeToAvoidBottomInset;

  final bool? showAuthActionSwitch;

  final String? email;

  final Widget Function(
    BuildContext,
    AuthAction,
  )? subtitleBuilder;

  final Widget Function(
    BuildContext,
    AuthAction,
  )? footerBuilder;

  final Key? loginViewKey;

  final List<FirebaseUIAction> actions;

  final double breakpoint;

  final Set<FirebaseUIStyle>? styles;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, providers: $providers, auth: $auth, headerMaxExtent: $headerMaxExtent, headerBuilder: $headerBuilder, sideBuilder: $sideBuilder, oauthButtonVariant: $oauthButtonVariant, desktopLayoutDirection: $desktopLayoutDirection, resizeToAvoidBottomInset: $resizeToAvoidBottomInset, showAuthActionSwitch: $showAuthActionSwitch, email: $email, subtitleBuilder: $subtitleBuilder, footerBuilder: $footerBuilder, loginViewKey: $loginViewKey, actions: $actions, breakpoint: $breakpoint, styles: $styles}';
  }
}

/// generated route for
/// [EmailVerificationScreen]
class EmailVerificationRoute extends PageRouteInfo<EmailVerificationRouteArgs> {
  EmailVerificationRoute({
    Key? key,
    FirebaseAuth? auth,
    List<FirebaseUIAction> actions = const [],
    Widget Function(
      BuildContext,
      BoxConstraints,
      double,
    )?
        headerBuilder,
    double? headerMaxExtent,
    Widget Function(
      BuildContext,
      BoxConstraints,
    )?
        sideBuilder,
    TextDirection? desktopLayoutDirection,
    double breakpoint = 500,
    ActionCodeSettings? actionCodeSettings,
  }) : super(
          EmailVerificationRoute.name,
          path: '/email-verification',
          args: EmailVerificationRouteArgs(
            key: key,
            auth: auth,
            actions: actions,
            headerBuilder: headerBuilder,
            headerMaxExtent: headerMaxExtent,
            sideBuilder: sideBuilder,
            desktopLayoutDirection: desktopLayoutDirection,
            breakpoint: breakpoint,
            actionCodeSettings: actionCodeSettings,
          ),
        );

  static const String name = 'EmailVerificationRoute';
}

class EmailVerificationRouteArgs {
  const EmailVerificationRouteArgs({
    this.key,
    this.auth,
    this.actions = const [],
    this.headerBuilder,
    this.headerMaxExtent,
    this.sideBuilder,
    this.desktopLayoutDirection,
    this.breakpoint = 500,
    this.actionCodeSettings,
  });

  final Key? key;

  final FirebaseAuth? auth;

  final List<FirebaseUIAction> actions;

  final Widget Function(
    BuildContext,
    BoxConstraints,
    double,
  )? headerBuilder;

  final double? headerMaxExtent;

  final Widget Function(
    BuildContext,
    BoxConstraints,
  )? sideBuilder;

  final TextDirection? desktopLayoutDirection;

  final double breakpoint;

  final ActionCodeSettings? actionCodeSettings;

  @override
  String toString() {
    return 'EmailVerificationRouteArgs{key: $key, auth: $auth, actions: $actions, headerBuilder: $headerBuilder, headerMaxExtent: $headerMaxExtent, sideBuilder: $sideBuilder, desktopLayoutDirection: $desktopLayoutDirection, breakpoint: $breakpoint, actionCodeSettings: $actionCodeSettings}';
  }
}
