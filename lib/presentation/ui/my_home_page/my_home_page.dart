import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minimal_riverpod_sample/presentation/controller/counter_controller.dart';
import 'package:minimal_riverpod_sample/presentation/ui/util/modal_progress_indicator.dart';

import 'provider/my_home_page_provider.dart';

class MyHomePage extends HookConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(myHomePageProvider.notifier);
    final isUpdating =
        ref.watch(myHomePageProvider.select((value) => value.isUpdating));
    return ModalProgressIndicator(
      isLoading: isUpdating,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: ref.watch(counterController).when(
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              data: (state) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                    Text(
                      '${state.count}回',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
            ),
        floatingActionButton: FloatingActionButton(
          onPressed: notifier.onPressedFloatingButton,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
