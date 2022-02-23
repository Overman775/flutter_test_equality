import 'package:equatable/equatable.dart';

import 'random_values.dart';

class ObjectLevel1Equatable5 extends Equatable {
  final int intVal;
  final String stringVal;
  final double doubleVal;
  final num numVal;
  final bool boolVal;

  ObjectLevel1Equatable5({
    required this.intVal,
    required this.stringVal,
    required this.doubleVal,
    required this.numVal,
    required this.boolVal,
  });

  @override
  List<Object?> get props => [
        intVal,
        stringVal,
        doubleVal,
        numVal,
        boolVal,
      ];

  factory ObjectLevel1Equatable5.createFromRandom(RandomValues randomValues) =>
      ObjectLevel1Equatable5(
        intVal: randomValues.randomInt,
        stringVal: randomValues.randomString,
        doubleVal: randomValues.randomDouble,
        numVal: randomValues.randomInt,
        boolVal: randomValues.randomBool,
      );

  ObjectLevel1Equatable5 copyWith({
    int? intVal,
    String? stringVal,
    double? doubleVal,
    num? numVal,
    bool? boolVal,
  }) {
    return ObjectLevel1Equatable5(
      intVal: intVal ?? this.intVal,
      stringVal: stringVal ?? this.stringVal,
      doubleVal: doubleVal ?? this.doubleVal,
      numVal: numVal ?? this.numVal,
      boolVal: boolVal ?? this.boolVal,
    );
  }
}
