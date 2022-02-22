import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:eqtable_test/entity/object_level_0.dart';
import 'package:eqtable_test/entity/object_level_1.dart';

// Create a new benchmark by extending BenchmarkBase
class TemplateBenchmark extends BenchmarkBase {
  TemplateBenchmark() : super('Equatable compare');

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

//Android emulator
// I/flutter (25612): Equatable compare(RunTime): 2175.4021739130435 us.
// I/flutter (25612): Equatable compare(RunTime): 2069.770423991727 us.
// I/flutter (25612): Equatable compare(RunTime): 1998.4015984015984 us.
// I/flutter (25612): Equatable compare(RunTime): 2117.9089947089947 us.
// I/flutter (25612): Equatable compare(RunTime): 2020.6424242424243 us.
// I/flutter (25612): Equatable compare(RunTime): 1991.6318407960198 us.
// I/flutter (25612): Equatable compare(RunTime): 1985.5833333333333 us.
// I/flutter (25612): Equatable compare(RunTime): 2040.1376146788991 us.
// I/flutter (25612): Equatable compare(RunTime): 2034.8678861788617 us.
// I/flutter (25612): Equatable compare(RunTime): 2032.8262195121952 us.

///Test
// Equatable compare(RunTime): 2315.4791666666665 us.
// Equatable compare(RunTime): 2206.29217199559 us.
// Equatable compare(RunTime): 2160.4838012958962 us.
// Equatable compare(RunTime): 2149.2867883995705 us.
// Equatable compare(RunTime): 2155.7586206896553 us.
// Equatable compare(RunTime): 2127.393198724761 us.
// Equatable compare(RunTime): 2141.4550321199144 us.
// Equatable compare(RunTime): 2133.736673773987 us.
// Equatable compare(RunTime): 2139.299465240642 us.
// Equatable compare(RunTime): 2135.949839914621 us.


///Chrome
// Equatable compare(RunTime): 61754.545454545456 us.
// Equatable compare(RunTime): 61930.333333333336 us.
// Equatable compare(RunTime): 60945.42424242424 us.
// Equatable compare(RunTime): 60642.42424242424 us.
// Equatable compare(RunTime): 60067.617647058825 us.
// Equatable compare(RunTime): 61145.42424242424 us.
// Equatable compare(RunTime): 61221.181818181816 us.
// Equatable compare(RunTime): 59361.76470588235 us.
// Equatable compare(RunTime): 60981.818181818184 us.
// Equatable compare(RunTime): 60770.617647058825 us.
