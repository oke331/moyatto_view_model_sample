import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minimal_riverpod_sample/repository/counter_repository.dart';
import 'package:minimal_riverpod_sample/resources/model/counter.dart';

final counterController =
    StateNotifierProvider<CounterController, AsyncValue<Counter>>(
  (ref) => CounterController(repository: ref.watch(counterRepository)),
);

/// カウント機能用の状態管理を担うクラス
class CounterController extends StateNotifier<AsyncValue<Counter>> {
  CounterController({required this.repository})
      : super(const AsyncValue.loading()) {
    fetchCount();
  }

  final CounterRepository repository;

  Future<void> fetchCount() async {
    state = const AsyncLoading();
    try {
      final result = await repository.fetchCount();
      state = AsyncData(result);
    } on Exception catch (e) {
      state = AsyncError(e);
    }
  }

  Future<void> registerCount({required int count}) async {
    // 登録時のエラー処理はprovider側に任せる感じ？
    await repository.registerCount(count: count);
    state = AsyncData(Counter(count: count));
  }
}
