// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';

import 'compare_benchmark_freezed.dart';
import 'compare_benchmark_equatable.dart';
import 'compare_benchmark_operator.dart';

void main() async => runBenchmark();

Future<void> runBenchmark() async {
  print('Wait 3 seconds');
  await Future.delayed(const Duration(seconds: 3));
  print('warming up...');
  CompareBenchmarkOperator.runBenchmark10();
  CompareBenchmarkEquatable.runBenchmark10();
  CompareBenchmarkFreezed.runBenchmark10();
  await Future.delayed(const Duration(milliseconds: 300));

  await _testLoop(CompareBenchmarkOperator.runBenchmark10, 'Operator');
  await _testLoop(CompareBenchmarkEquatable.runBenchmark10, 'Equatable');
  await _testLoop(CompareBenchmarkFreezed.runBenchmark10, 'Freezed');

  print('---Done!---');
}

Future<void> _testLoop(VoidCallback benchmark, String nameLoop) async {
  print('---$nameLoop---');
  for (var i = 0; i < 10; i++) {
    benchmark();
    await Future.delayed(const Duration(milliseconds: 300));
  }
}
