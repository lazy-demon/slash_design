import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_design/object/state/auth.dart';
import 'package:slash_design/ui/widget/fab.dart';
import 'package:slash_design/ui/widget/menu.dart';

class Scaffolding extends ConsumerWidget {
  const Scaffolding({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // var authStatus = ref.watch(authStatusProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(authStatusProvider).toString()),
        actions: const [Menu()],
      ),
      // drawer: (authStatus is Authenticated) ? const NDrawer() : null,
      body: body,
      floatingActionButton: FAB(),
    );
  }
}
