// ignore_for_file: avoid_print

import 'compare_benchmark_freezed.dart';
import 'compare_benchmark_equatable.dart';
import 'compare_benchmark_operator.dart';

void main() async {
  print('Wait 3 seconds');
  await Future.delayed(const Duration(seconds: 3));
  print('warming up...');
  CompareBenchmarkOperator.runBenchmark();
  CompareBenchmarkEquatable.runBenchmark();
  CompareBenchmarkFreezed.runBenchmark();
  await Future.delayed(const Duration(milliseconds: 100));
  print('---Operator---');
  for (var i = 0; i < 10; i++) {
    CompareBenchmarkOperator.runBenchmark();
    await Future.delayed(const Duration(milliseconds: 100));
  }
  print('---Equatable---');
  for (var i = 0; i < 10; i++) {
    CompareBenchmarkEquatable.runBenchmark();
    await Future.delayed(const Duration(milliseconds: 100));
  }
  print('---Freezed---');
  for (var i = 0; i < 10; i++) {
    CompareBenchmarkFreezed.runBenchmark();
    await Future.delayed(const Duration(milliseconds: 100));
  }
}
