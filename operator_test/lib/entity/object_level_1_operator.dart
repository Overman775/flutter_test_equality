import 'random_values.dart';

class ObjectLevel1Operator {
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

  ObjectLevel1Operator({
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

  ObjectLevel1Operator copyWith({
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
    return ObjectLevel1Operator(
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
  String toString() {
    return 'ObjectLevel1Operator(intVal: $intVal, stringVal: $stringVal, doubleVal: $doubleVal, numVal: $numVal, boolVal: $boolVal, intVal2: $intVal2, stringVal2: $stringVal2, doubleVal2: $doubleVal2, numVal2: $numVal2, boolVal2: $boolVal2)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ObjectLevel1Operator &&
        other.intVal == intVal &&
        other.stringVal == stringVal &&
        other.doubleVal == doubleVal &&
        other.numVal == numVal &&
        other.boolVal == boolVal &&
        other.intVal2 == intVal2 &&
        other.stringVal2 == stringVal2 &&
        other.doubleVal2 == doubleVal2 &&
        other.numVal2 == numVal2 &&
        other.boolVal2 == boolVal2;
  }

  @override
  int get hashCode {
    return intVal.hashCode ^
        stringVal.hashCode ^
        doubleVal.hashCode ^
        numVal.hashCode ^
        boolVal.hashCode ^
        intVal2.hashCode ^
        stringVal2.hashCode ^
        doubleVal2.hashCode ^
        numVal2.hashCode ^
        boolVal2.hashCode;
  }

  factory ObjectLevel1Operator.createFromRandom(RandomValues randomValues) =>
      ObjectLevel1Operator(
        intVal: randomValues.randomInt,
        stringVal: randomValues.randomString,
        doubleVal: randomValues.randomDouble,
        numVal: randomValues.randomInt,
        boolVal: randomValues.randomBool,
        intVal2: randomValues.randomInt,
        stringVal2: randomValues.randomString,
        doubleVal2: randomValues.randomDouble,
        numVal2: randomValues.randomInt,
        boolVal2: randomValues.randomBool,
      );
}
