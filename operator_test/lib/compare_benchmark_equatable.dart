import 'package:operator_test/entity/object_level_0_equatable.dart';

import 'compare_benchmark_base.dart';
import 'entity/object_level_1_equatable.dart';
import 'entity/random_values.dart';
import 'entity/values_count.dart';

class CompareBenchmarkEquatable extends CompareBenchmarkBase {
  CompareBenchmarkEquatable(ValuesCount valuesCount)
      : super('Equatable', valuesCount);

  @override
  void createObjects(ValuesCount valuesCount) {
    final randomValues = getRandomValues();

    object1 = ObjectLevel0Equatable(generateList(randomValues));
    object2 = ObjectLevel0Equatable(generateList(randomValues));
  }

  List<Object> generateList(RandomValues randomValues) => List<Object>.generate(
        1000,
        (index) => ObjectLevel1Equatable.createFromRandom(randomValues),
      );

  static void runBenchmark5() =>
      CompareBenchmarkEquatable(ValuesCount.values5).report();
  static void runBenchmark10() =>
      CompareBenchmarkEquatable(ValuesCount.values10).report();
  static void runBenchmark20() =>
      CompareBenchmarkEquatable(ValuesCount.values20).report();
}
