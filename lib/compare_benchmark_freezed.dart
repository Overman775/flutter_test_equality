import 'compare_benchmark_base.dart';
import 'entity/object_level_0_freezed.dart';
import 'entity/object_level_1_freezed_10.dart';
import 'entity/object_level_1_freezed_20.dart';
import 'entity/object_level_1_freezed_5.dart';
import 'entity/random_values.dart';
import 'entity/values_count.dart';

class CompareBenchmarkFreezed extends CompareBenchmarkBase {
  CompareBenchmarkFreezed(ValuesCount valuesCount)
      : super('Freezed', valuesCount);

  @override
  void createObjects(ValuesCount valuesCount) {
    final randomValues = getRandomValues();

    object1 = ObjectLevel0Freezed(generateList(randomValues, valuesCount));
    object2 = ObjectLevel0Freezed(generateList(randomValues, valuesCount));
  }

  List<Object> generateList(
          RandomValues randomValues, ValuesCount valuesCount) =>
      List<Object>.generate(
        1000,
        (index) {
          switch (valuesCount) {
            case ValuesCount.values5:
              return ObjectLevel1Freezed5.createFromRandom(randomValues);
            case ValuesCount.values10:
              return ObjectLevel1Freezed10.createFromRandom(randomValues);
            case ValuesCount.values20:
              return ObjectLevel1Freezed20.createFromRandom(randomValues);
          }
        },
      );

  static void runBenchmark5() =>
      CompareBenchmarkFreezed(ValuesCount.values5).report();
  static void runBenchmark10() =>
      CompareBenchmarkFreezed(ValuesCount.values10).report();
  static void runBenchmark20() =>
      CompareBenchmarkFreezed(ValuesCount.values20).report();
}
