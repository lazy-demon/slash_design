import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_design/state/auth.dart';

import '../scaffolding.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffolding(
        body: ElevatedButton(
            onPressed: () => ref.read(authStatusProvider.notifier).signOut(),
            child: Text(ref.watch(authStatusProvider).toString())));
  }
}
