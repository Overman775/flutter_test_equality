import 'compare_benchmark_base.dart';
import 'entity/object_level_0_freezed.dart';
import 'entity/object_level_1_freezed.dart';
import 'entity/random_values.dart';
import 'entity/values_count.dart';

class CompareBenchmarkFreezed extends CompareBenchmarkBase {
  CompareBenchmarkFreezed(ValuesCount valuesCount)
      : super('Freezed', valuesCount);

  @override
  void createObjects(ValuesCount valuesCount) {
    final randomValues = getRandomValues();

    object1 = ObjectLevel0Freezed(generateList(randomValues));
    object2 = ObjectLevel0Freezed(generateList(randomValues));
  }

  List<Object> generateList(RandomValues randomValues) => List<Object>.generate(
        1000,
        (index) => ObjectLevel1Freezed.createFromRandom(randomValues),
      );

  static void runBenchmark5() =>
      CompareBenchmarkFreezed(ValuesCount.values5).report();
  static void runBenchmark10() =>
      CompareBenchmarkFreezed(ValuesCount.values10).report();
  static void runBenchmark20() =>
      CompareBenchmarkFreezed(ValuesCount.values20).report();
}
