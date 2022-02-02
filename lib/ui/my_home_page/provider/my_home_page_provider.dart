import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'my_home_page_provider.freezed.dart';

@freezed
class MyHomePageState with _$MyHomePageState {
  const factory MyHomePageState({
    @Default(false) bool isUpdating,
    @Default('') String errorMessage,
  }) = _MyHomePageState;
}

class MyHomePageProvider extends StateNotifier<MyHomePageState> {
  MyHomePageProvider() : super(const MyHomePageState());
}
