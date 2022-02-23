import 'compare_benchmark_base.dart';
import 'entity/object_level_0_operator.dart';
import 'entity/object_level_1_operator_10.dart';
import 'entity/object_level_1_operator_20.dart';
import 'entity/object_level_1_operator_5.dart';
import 'entity/random_values.dart';
import 'entity/values_count.dart';

class CompareBenchmarkOperator extends CompareBenchmarkBase {
  CompareBenchmarkOperator(ValuesCount valuesCount)
      : super('Operator ${valuesCount.name}', valuesCount);

  @override
  void createObjects(ValuesCount valuesCount) {
    final randomValues = getRandomValues();

    object1 = ObjectLevel0Operator(generateList(randomValues, valuesCount));
    object2 = ObjectLevel0Operator(generateList(randomValues, valuesCount));
  }

  List<Object> generateList(
          RandomValues randomValues, ValuesCount valuesCount) =>
      List<Object>.generate(
        1000,
        (index) {
          switch (valuesCount) {
            case ValuesCount.values5:
              return ObjectLevel1Operator5.createFromRandom(randomValues);
            case ValuesCount.values10:
              return ObjectLevel1Operator10.createFromRandom(randomValues);
            case ValuesCount.values20:
              return ObjectLevel1Operator20.createFromRandom(randomValues);
          }
        },
      );

  static void runBenchmark5() =>
      CompareBenchmarkOperator(ValuesCount.values5).report();
  static void runBenchmark10() =>
      CompareBenchmarkOperator(ValuesCount.values10).report();
  static void runBenchmark20() =>
      CompareBenchmarkOperator(ValuesCount.values20).report();
}
