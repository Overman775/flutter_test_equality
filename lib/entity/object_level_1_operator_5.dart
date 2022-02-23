import 'random_values.dart';

class ObjectLevel1Operator5 {
  final int intVal;
  final String stringVal;
  final double doubleVal;
  final num numVal;
  final bool boolVal;

  ObjectLevel1Operator5({
    required this.intVal,
    required this.stringVal,
    required this.doubleVal,
    required this.numVal,
    required this.boolVal,
  });

  factory ObjectLevel1Operator5.createFromRandom(RandomValues randomValues) =>
      ObjectLevel1Operator5(
        intVal: randomValues.randomInt,
        stringVal: randomValues.randomString,
        doubleVal: randomValues.randomDouble,
        numVal: randomValues.randomInt,
        boolVal: randomValues.randomBool,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ObjectLevel1Operator5 &&
        other.intVal == intVal &&
        other.stringVal == stringVal &&
        other.doubleVal == doubleVal &&
        other.numVal == numVal &&
        other.boolVal == boolVal;
  }

  @override
  int get hashCode {
    return intVal.hashCode ^
        stringVal.hashCode ^
        doubleVal.hashCode ^
        numVal.hashCode ^
        boolVal.hashCode;
  }

  ObjectLevel1Operator5 copyWith({
    int? intVal,
    String? stringVal,
    double? doubleVal,
    num? numVal,
    bool? boolVal,
  }) {
    return ObjectLevel1Operator5(
      intVal: intVal ?? this.intVal,
      stringVal: stringVal ?? this.stringVal,
      doubleVal: doubleVal ?? this.doubleVal,
      numVal: numVal ?? this.numVal,
      boolVal: boolVal ?? this.boolVal,
    );
  }

  @override
  String toString() {
    return 'ObjectLevel1Operator5(intVal: $intVal, stringVal: $stringVal, doubleVal: $doubleVal, numVal: $numVal, boolVal: $boolVal)';
  }
}
