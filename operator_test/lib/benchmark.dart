import 'package:benchmark_harness/benchmark_harness.dart';
import 'dart:math';

import 'entity/object_level_0.dart';
import 'entity/object_level_1.dart';

// Create a new benchmark by extending BenchmarkBase
class TemplateBenchmark extends BenchmarkBase {
  TemplateBenchmark() : super('Operator compare');

  final random = Random();

  late ObjectLevel0? object1;
  late ObjectLevel0? object2;

  bool? result;

  String _generateRandomString(int length) => String.fromCharCodes(
      List.generate(length, (index) => random.nextInt(33) + 89));

  void _createObjects() {
    final bool randomBool = random.nextBool();
    final double randomDouble = random.nextDouble();
    final int randomInt = random.nextInt(999999);
    final String randomString =
        _generateRandomString(random.nextInt(1000) + 100);

    object1 = ObjectLevel0(generateList(
      randomBool,
      randomDouble,
      randomInt,
      randomString,
    ));
    object2 = ObjectLevel0(generateList(
      randomBool,
      randomDouble,
      randomInt,
      randomString,
    ));
  }

  bool _compareTest() => object1 == object2;

  List<ObjectLevel1> generateList(
    bool randomBool,
    double randomDouble,
    int randomInt,
    String randomString,
  ) =>
      List<ObjectLevel1>.generate(
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
    result = _compareTest();
  }

  // Not measured setup code executed prior to the benchmark runs.
  @override
  void setup() {
    _createObjects();
  }

  // Not measured teardown code executed after the benchmark runs.
  @override
  void teardown() {
    // print('result: $result');
  }
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
