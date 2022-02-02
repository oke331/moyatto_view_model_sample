import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter.freezed.dart';

@freezed
class Counter with _$Counter {
  const factory Counter({
    required int count,
  }) = _Counter;
}
