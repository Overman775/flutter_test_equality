import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:operator_test/entity/object_level_0_operator.dart';
import 'package:operator_test/entity/object_level_1_operator.dart';

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

//Android emulator
// I/flutter (24504): Operator compare(RunTime): 253.87255648641786 us.
// I/flutter (24504): Operator compare(RunTime): 227.61932400136564 us.
// I/flutter (24504): Operator compare(RunTime): 225.96475372797107 us.
// I/flutter (24504): Operator compare(RunTime): 231.1537039177164 us.
// I/flutter (24504): Operator compare(RunTime): 225.51736189402482 us.
// I/flutter (24504): Operator compare(RunTime): 222.275030558951 us.
// I/flutter (24504): Operator compare(RunTime): 220.76434878587196 us.
// I/flutter (24504): Operator compare(RunTime): 222.02786412078152 us.
// I/flutter (24504): Operator compare(RunTime): 220.4591049382716 us.
// I/flutter (24504): Operator compare(RunTime): 220.12634822804316 us.

///Test
// Operator compare(RunTime): 186.62498833628814 us.
// Operator compare(RunTime): 231.01986601986601 us.
// Operator compare(RunTime): 185.02414431082332 us.
// Operator compare(RunTime): 183.61360506747454 us.
// Operator compare(RunTime): 184.61879268968065 us.
// Operator compare(RunTime): 184.1374516663598 us.
// Operator compare(RunTime): 182.52126300419783 us.
// Operator compare(RunTime): 185.01850138760406 us.
// Operator compare(RunTime): 183.8157338479919 us.
// Operator compare(RunTime): 185.13134024435394 us.


///Chrome
// Operator compare(RunTime): 675.3210668467252 us.
// Operator compare(RunTime): 659.9142197294623 us.
// Operator compare(RunTime): 663.1962864721486 us.
// Operator compare(RunTime): 674.1823390630266 us.
// Operator compare(RunTime): 653.2328543435663 us.
// Operator compare(RunTime): 654.6465968586388 us.
// Operator compare(RunTime): 660.5350066050198 us.
// Operator compare(RunTime): 672.8553649512277 us.
// Operator compare(RunTime): 657.9934210526316 us.
// Operator compare(RunTime): 662.5038092083471 us.
