import 'compare_benchmark_base.dart';
import 'entity/object_level_0_freezed.dart';
import 'entity/object_level_1_freezed.dart';
import 'entity/random_values.dart';

class CompareBenchmarkFreezed extends CompareBenchmarkBase {
  CompareBenchmarkFreezed() : super('Freezed');

  @override
  void createObjects() {
    final randomValues = getRandomValues();

    object1 = ObjectLevel0Freezed(generateList(randomValues));
    object2 = ObjectLevel0Freezed(generateList(randomValues));
  }

  List<Object> generateList(RandomValues randomValues) => List<Object>.generate(
        1000,
        (index) => ObjectLevel1Freezed.createFromRandom(randomValues),
      );

  static void runBenchmark() => CompareBenchmarkFreezed().report();
}
