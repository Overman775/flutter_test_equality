import 'package:operator_test/entity/object_level_0_equatable.dart';

import 'compare_benchmark_base.dart';
import 'entity/object_level_1_equatable.dart';
import 'entity/random_values.dart';

class CompareBenchmarkEquatable extends CompareBenchmarkBase {
  CompareBenchmarkEquatable() : super('Equatable');

  @override
  void createObjects() {
    final randomValues = getRandomValues();

    object1 = ObjectLevel0Equatable(generateList(randomValues));
    object2 = ObjectLevel0Equatable(generateList(randomValues));
  }

  List<Object> generateList(RandomValues randomValues) => List<Object>.generate(
        1000,
        (index) => ObjectLevel1Equatable.createFromRandom(randomValues),
      );

  static void runBenchmark() => CompareBenchmarkEquatable().report();
}
