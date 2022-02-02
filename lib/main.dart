import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presentation/ui/navigator_provider.dart';
import 'presentation/ui/my_home_page/my_home_page.dart';

void main() {
  runApp(ProviderScope(overrides: [
    navigatorProvider.overrideWithValue(GlobalKey<NavigatorState>())
  ], child: const MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      navigatorKey: ref.watch(navigatorProvider),
    );
  }
}
