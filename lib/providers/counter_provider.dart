
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'counter_provider.g.dart';
@riverpod
class Counter extends _$Counter {
  @override
  int build() => 0;

//   * Methods

  void increment() => state++;
}