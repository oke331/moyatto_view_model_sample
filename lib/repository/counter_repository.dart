import 'package:minimal_riverpod_sample/resources/model/counter.dart';

class InMemoryCounterRepository {
  var counter = const Counter(count: 0);

  Future<Counter> fetchCount() async {
    await Future.delayed(const Duration(seconds: 1));
    return counter;
  }

  Future<void> registerCount({required int count}) async {
    await Future.delayed(const Duration(seconds: 1));
    counter = Counter(count: count);
  }
}
