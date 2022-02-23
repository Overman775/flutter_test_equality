import 'random_values.dart';

class ObjectLevel1Operator20 {
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
  final int intVal3;
  final String stringVal3;
  final double doubleVal3;
  final num numVal3;
  final bool boolVal3;
  final int intVal4;
  final String stringVal4;
  final double doubleVal4;
  final num numVal4;
  final bool boolVal4;

  ObjectLevel1Operator20({
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
    required this.intVal3,
    required this.stringVal3,
    required this.doubleVal3,
    required this.numVal3,
    required this.boolVal3,
    required this.intVal4,
    required this.stringVal4,
    required this.doubleVal4,
    required this.numVal4,
    required this.boolVal4,
  });

  factory ObjectLevel1Operator20.createFromRandom(RandomValues randomValues) =>
      ObjectLevel1Operator20(
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
        intVal3: randomValues.randomInt,
        stringVal3: randomValues.randomString,
        doubleVal3: randomValues.randomDouble,
        numVal3: randomValues.randomInt,
        boolVal3: randomValues.randomBool,
        intVal4: randomValues.randomInt,
        stringVal4: randomValues.randomString,
        doubleVal4: randomValues.randomDouble,
        numVal4: randomValues.randomInt,
        boolVal4: randomValues.randomBool,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ObjectLevel1Operator20 &&
        other.intVal == intVal &&
        other.stringVal == stringVal &&
        other.doubleVal == doubleVal &&
        other.numVal == numVal &&
        other.boolVal == boolVal &&
        other.intVal2 == intVal2 &&
        other.stringVal2 == stringVal2 &&
        other.doubleVal2 == doubleVal2 &&
        other.numVal2 == numVal2 &&
        other.boolVal2 == boolVal2 &&
        other.intVal3 == intVal3 &&
        other.stringVal3 == stringVal3 &&
        other.doubleVal3 == doubleVal3 &&
        other.numVal3 == numVal3 &&
        other.boolVal3 == boolVal3 &&
        other.intVal4 == intVal4 &&
        other.stringVal4 == stringVal4 &&
        other.doubleVal4 == doubleVal4 &&
        other.numVal4 == numVal4 &&
        other.boolVal4 == boolVal4;
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
        boolVal2.hashCode ^
        intVal3.hashCode ^
        stringVal3.hashCode ^
        doubleVal3.hashCode ^
        numVal3.hashCode ^
        boolVal3.hashCode ^
        intVal4.hashCode ^
        stringVal4.hashCode ^
        doubleVal4.hashCode ^
        numVal4.hashCode ^
        boolVal4.hashCode;
  }

  ObjectLevel1Operator20 copyWith({
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
    int? intVal3,
    String? stringVal3,
    double? doubleVal3,
    num? numVal3,
    bool? boolVal3,
    int? intVal4,
    String? stringVal4,
    double? doubleVal4,
    num? numVal4,
    bool? boolVal4,
  }) {
    return ObjectLevel1Operator20(
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
      intVal3: intVal3 ?? this.intVal3,
      stringVal3: stringVal3 ?? this.stringVal3,
      doubleVal3: doubleVal3 ?? this.doubleVal3,
      numVal3: numVal3 ?? this.numVal3,
      boolVal3: boolVal3 ?? this.boolVal3,
      intVal4: intVal4 ?? this.intVal4,
      stringVal4: stringVal4 ?? this.stringVal4,
      doubleVal4: doubleVal4 ?? this.doubleVal4,
      numVal4: numVal4 ?? this.numVal4,
      boolVal4: boolVal4 ?? this.boolVal4,
    );
  }

  @override
  String toString() {
    return 'ObjectLevel1Operator20(intVal: $intVal, stringVal: $stringVal, doubleVal: $doubleVal, numVal: $numVal, boolVal: $boolVal, intVal2: $intVal2, stringVal2: $stringVal2, doubleVal2: $doubleVal2, numVal2: $numVal2, boolVal2: $boolVal2, intVal3: $intVal3, stringVal3: $stringVal3, doubleVal3: $doubleVal3, numVal3: $numVal3, boolVal3: $boolVal3, intVal4: $intVal4, stringVal4: $stringVal4, doubleVal4: $doubleVal4, numVal4: $numVal4, boolVal4: $boolVal4)';
  }
}
