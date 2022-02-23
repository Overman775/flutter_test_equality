import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:operator_test/entity/random_values.dart';
import 'dart:math';

import 'entity/values_count.dart';

// Create a new benchmark by extending BenchmarkBase
class CompareBenchmarkBase extends BenchmarkBase {
  CompareBenchmarkBase(String name, this.valuesCount) : super(name);

  final ValuesCount valuesCount;
  final random = Random();

  late Object object1;
  late Object object2;

  bool? result;

  String _generateRandomString(int length) => String.fromCharCodes(
      List.generate(length, (index) => random.nextInt(33) + 89));

  RandomValues getRandomValues() => RandomValues(
        randomBool: random.nextBool(),
        randomDouble: random.nextDouble(),
        randomInt: random.nextInt(999999),
        randomString: _generateRandomString(random.nextInt(1000) + 100),
      );

  void createObjects(ValuesCount valuesCount) {
    throw UnimplementedError();
  }

  bool _compareTest() => object1 == object2;

  // The benchmark code.
  @override
  void run() {
    result = _compareTest();
  }

  // Not measured setup code executed prior to the benchmark runs.
  @override
  void setup() {
    createObjects(valuesCount);
  }

  // Not measured teardown code executed after the benchmark runs.
  @override
  void teardown() {}
}

Future<void> runBenchmark() async {}
