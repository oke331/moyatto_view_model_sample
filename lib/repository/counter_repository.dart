import 'package:minimal_riverpod_sample/resorces/model/counter.dart';

class InMemoryCounterRepository {
  var counter = const Counter(count: 0);

  Counter fetchCount() {
    return counter;
  }

  void registerCount({required int count}) {
    counter = Counter(count: count);
  }
}
