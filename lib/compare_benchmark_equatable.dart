import 'compare_benchmark_base.dart';
import 'entity/object_level_0_equatable.dart';
import 'entity/object_level_1_equatable_10.dart';
import 'entity/object_level_1_equatable_20.dart';
import 'entity/object_level_1_equatable_5.dart';
import 'entity/random_values.dart';
import 'entity/values_count.dart';

class CompareBenchmarkEquatable extends CompareBenchmarkBase {
  CompareBenchmarkEquatable(ValuesCount valuesCount)
      : super('Equatable', valuesCount);

  @override
  void createObjects(ValuesCount valuesCount) {
    final randomValues = getRandomValues();

    object1 = ObjectLevel0Equatable(generateList(randomValues, valuesCount));
    object2 = ObjectLevel0Equatable(generateList(randomValues, valuesCount));
  }

  List<Object> generateList(
          RandomValues randomValues, ValuesCount valuesCount) =>
      List<Object>.generate(
        1000,
        (index) {
          switch (valuesCount) {
            case ValuesCount.values5:
              return ObjectLevel1Equatable5.createFromRandom(randomValues);
            case ValuesCount.values10:
              return ObjectLevel1Equatable10.createFromRandom(randomValues);
            case ValuesCount.values20:
              return ObjectLevel1Equatable20.createFromRandom(randomValues);
          }
        },
      );
  static void runBenchmark5() =>
      CompareBenchmarkEquatable(ValuesCount.values5).report();
  static void runBenchmark10() =>
      CompareBenchmarkEquatable(ValuesCount.values10).report();
  static void runBenchmark20() =>
      CompareBenchmarkEquatable(ValuesCount.values20).report();
}
