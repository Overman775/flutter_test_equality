import 'package:benchmark_harness/benchmark_harness.dart';
import 'dart:math';

import 'entity/object_level_0_operator.dart';
import 'entity/object_level_1_operator.dart';

// Create a new benchmark by extending BenchmarkBase
class CompareBenchmarkBase extends BenchmarkBase {
  CompareBenchmarkBase(String name) : super(name);

  final random = Random();

  late Object? object1;
  late Object? object2;

  bool? result;

  String generateRandomString(int length) => String.fromCharCodes(
      List.generate(length, (index) => random.nextInt(33) + 89));

  void createObjects() {
    final bool randomBool = random.nextBool();
    final double randomDouble = random.nextDouble();
    final int randomInt = random.nextInt(999999);
    final String randomString =
        generateRandomString(random.nextInt(1000) + 100);

    object1 = ObjectLevel0Operator(_generateList(
      randomBool,
      randomDouble,
      randomInt,
      randomString,
    ));
    object2 = ObjectLevel0Operator(_generateList(
      randomBool,
      randomDouble,
      randomInt,
      randomString,
    ));
  }

  bool compareTest() => object1 == object2;

  List<ObjectLevel1Operator> _generateList(
    bool randomBool,
    double randomDouble,
    int randomInt,
    String randomString,
  ) =>
      List<ObjectLevel1Operator>.generate(
        1000,
        (index) => ObjectLevel1Operator(
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

  // The benchmark code.
  @override
  void run() {
    result = compareTest();
  }

  // Not measured setup code executed prior to the benchmark runs.
  @override
  void setup() {
    createObjects();
  }

  // Not measured teardown code executed after the benchmark runs.
  @override
  void teardown() {
    // print('result: $result');
  }

  // static void main(String name) {
  //   CompareBenchmark(name).report();
  // }
}

Future<void> runBenchmark() async {}

main() async {}
