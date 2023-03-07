import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main.g.dart';

@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello world';
}

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends HookConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = useState(0);
    final String value = ref.watch(helloWorldProvider);

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Example')),
          body: Center(
            child: Text('$value ${counter.value}'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => counter.value++,
            child: const Icon(Icons.add),
          )),
    );
  }
}