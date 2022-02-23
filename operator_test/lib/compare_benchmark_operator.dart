import 'compare_benchmark_base.dart';
import 'entity/object_level_0_operator.dart';
import 'entity/object_level_1_operator.dart';
import 'entity/random_values.dart';
import 'entity/values_count.dart';

class CompareBenchmarkOperator extends CompareBenchmarkBase {
  CompareBenchmarkOperator(ValuesCount valuesCount)
      : super('Operator', valuesCount);

  @override
  void createObjects(ValuesCount valuesCount) {
    final randomValues = getRandomValues();

    object1 = ObjectLevel0Operator(generateList(randomValues));
    object2 = ObjectLevel0Operator(generateList(randomValues));
  }

  List<Object> generateList(RandomValues randomValues) => List<Object>.generate(
        1000,
        (index) => ObjectLevel1Operator.createFromRandom(randomValues),
      );

  static void runBenchmark5() =>
      CompareBenchmarkOperator(ValuesCount.values5).report();
  static void runBenchmark10() =>
      CompareBenchmarkOperator(ValuesCount.values10).report();
  static void runBenchmark20() =>
      CompareBenchmarkOperator(ValuesCount.values20).report();
}
