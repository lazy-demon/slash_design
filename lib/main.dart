import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_design/firebase_options.dart';
import 'package:slash_design/router/guard/auth.dart';
import 'package:slash_design/router/router.dart';
// part 'main.g.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
// @riverpod
// String helloWorld(HelloWorldRef ref) {
//   return 'Hello world';
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    late final appRouter = AppRouter(ref);

    return MaterialApp.router(
      theme: ThemeData.dark(useMaterial3: true),
      routerConfig: appRouter.config(),
      title: "Slash / Design",
    );
  }
}
