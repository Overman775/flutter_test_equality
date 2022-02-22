import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
class ObjectLevel1 extends Equatable {
  final int intVal;
  final String stringVal;
  final double doubleVal;
  final num numVal;
  final bool boolVal;
  final int intVal2;
  final String stringVal2;
  final double doubleVal2;
  final num numVal2;
  final bool boolVal2;

  const ObjectLevel1({
    required this.intVal,
    required this.stringVal,
    required this.doubleVal,
    required this.numVal,
    required this.boolVal,
    required this.intVal2,
    required this.stringVal2,
    required this.doubleVal2,
    required this.numVal2,
    required this.boolVal2,
  });

  ObjectLevel1 copyWith({
    int? intVal,
    String? stringVal,
    double? doubleVal,
    num? numVal,
    bool? boolVal,
    int? intVal2,
    String? stringVal2,
    double? doubleVal2,
    num? numVal2,
    bool? boolVal2,
  }) {
    return ObjectLevel1(
      intVal: intVal ?? this.intVal,
      stringVal: stringVal ?? this.stringVal,
      doubleVal: doubleVal ?? this.doubleVal,
      numVal: numVal ?? this.numVal,
      boolVal: boolVal ?? this.boolVal,
      intVal2: intVal2 ?? this.intVal2,
      stringVal2: stringVal2 ?? this.stringVal2,
      doubleVal2: doubleVal2 ?? this.doubleVal2,
      numVal2: numVal2 ?? this.numVal2,
      boolVal2: boolVal2 ?? this.boolVal2,
    );
  }

  @override
  List<Object?> get props => [
        intVal,
        stringVal,
        doubleVal,
        numVal,
        boolVal,
        intVal2,
        stringVal2,
        doubleVal2,
        numVal2,
        boolVal2,
      ];
}
