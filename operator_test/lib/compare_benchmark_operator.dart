import 'compare_benchmark_base.dart';
import 'entity/object_level_0_operator.dart';
import 'entity/object_level_1_operator.dart';
import 'entity/random_values.dart';

class CompareBenchmarkOperator extends CompareBenchmarkBase {
  CompareBenchmarkOperator() : super('Operator');

  @override
  void createObjects() {
    final randomValues = getRandomValues();

    object1 = ObjectLevel0Operator(generateList(randomValues));
    object2 = ObjectLevel0Operator(generateList(randomValues));
  }

  List<Object> generateList(RandomValues randomValues) => List<Object>.generate(
        1000,
        (index) => ObjectLevel1Operator.createFromRandom(randomValues),
      );

  static void runBenchmark() => CompareBenchmarkOperator().report();
}
