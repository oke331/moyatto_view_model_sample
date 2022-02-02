import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minimal_riverpod_sample/repository/counter_repository.dart';
import 'package:minimal_riverpod_sample/resources/model/counter.dart';

final counterController = StateNotifierProvider(
  (ref) => CounterController(repository: ref.watch(counterRepository)),
);

class CounterController extends StateNotifier<AsyncValue<Counter>> {
  CounterController({required this.repository})
      : super(const AsyncValue.loading()) {
    fetchCount();
  }

  final InMemoryCounterRepository repository;

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
    repository.registerCount(count: count);
    AsyncData(count);
  }
}
