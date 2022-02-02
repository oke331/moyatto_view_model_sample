import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minimal_riverpod_sample/controller/counter_controller.dart';
import 'package:minimal_riverpod_sample/ui/navigator_provider.dart';

part 'my_home_page_provider.freezed.dart';

final myHomePageProvider =
    StateNotifierProvider<MyHomePageProvider, MyHomePageState>(
  (ref) => MyHomePageProvider(
    ref.watch(counterController.notifier),
    ref.watch(navigatorProvider),
  ),
);

@freezed
class MyHomePageState with _$MyHomePageState {
  const factory MyHomePageState({
    @Default(false) bool isUpdating,
  }) = _MyHomePageState;
}

/// MyHomePageのUI用の状態管理やタップ時のロジックコードなどを担うクラス
class MyHomePageProvider extends StateNotifier<MyHomePageState> {
  MyHomePageProvider(
    this._counterController,
    this._navigatorProvider,
  ) : super(const MyHomePageState());

  final CounterController _counterController;
  final GlobalKey _navigatorProvider;

  Future<void> onPressedFloatingButton() async {
    final count = _counterController.state.value?.count;
    if (state.isUpdating || count == null) {
      return;
    }
    state = state.copyWith(isUpdating: true);

    try {
      await _counterController.registerCount(count: count + 1);
    } on Exception catch (e) {
      ScaffoldMessenger.of(_navigatorProvider.currentContext!).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }

    state = state.copyWith(isUpdating: false);
  }
}
