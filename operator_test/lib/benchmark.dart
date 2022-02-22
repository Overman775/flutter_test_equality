import 'package:benchmark_harness/benchmark_harness.dart';

import 'entity/object_level_0.dart';
import 'entity/object_level_1.dart';

// Create a new benchmark by extending BenchmarkBase
class TemplateBenchmark extends BenchmarkBase {
  TemplateBenchmark() : super('Operator compare');

  late ObjectLevel0? object1;
  late ObjectLevel0? object2;

  bool? result;

  void _createObjects() {
    object1 = ObjectLevel0(generateList());
    object2 = ObjectLevel0(generateList());
  }

  bool _compareTest() => object1 == object2;

  List<ObjectLevel1> generateList() => List<ObjectLevel1>.generate(
        1000,
        (index) => ObjectLevel1(
          boolVal: true,
          doubleVal: index.toDouble(),
          intVal: index,
          numVal: index,
          stringVal: index.toString(),
          boolVal2: true,
          doubleVal2: index.toDouble(),
          intVal2: index,
          numVal2: index,
          stringVal2: index.toString(),
        ),
      );

  static void main() {
    TemplateBenchmark().report();
  }

  // The benchmark code.
  @override
  void run() {
    _compareTest();
  }

  // Not measured setup code executed prior to the benchmark runs.
  @override
  void setup() {
    _createObjects();
  }

  // Not measured teardown code executed after the benchmark runs.
  @override
  void teardown() {}
}

main() {
  // Run TemplateBenchmark
  TemplateBenchmark.main();
  TemplateBenchmark.main();
  TemplateBenchmark.main();
  TemplateBenchmark.main();
  TemplateBenchmark.main();
  TemplateBenchmark.main();
  TemplateBenchmark.main();
  TemplateBenchmark.main();
  TemplateBenchmark.main();
  TemplateBenchmark.main();
}