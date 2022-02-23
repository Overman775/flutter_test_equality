import 'package:freezed_annotation/freezed_annotation.dart';
import 'random_values.dart';

part 'object_level_1_freezed_20.freezed.dart';

@freezed
class ObjectLevel1Freezed20 with _$ObjectLevel1Freezed20 {
  factory ObjectLevel1Freezed20({
    required int intVal,
    required String stringVal,
    required double doubleVal,
    required num numVal,
    required bool boolVal,
    required int intVal2,
    required String stringVal2,
    required double doubleVal2,
    required num numVal2,
    required bool boolVal2,
    required int intVal3,
    required String stringVal3,
    required double doubleVal3,
    required num numVal3,
    required bool boolVal3,
    required int intVal4,
    required String stringVal4,
    required double doubleVal4,
    required num numVal4,
    required bool boolVal4,
  }) = _ObjectLevel1Freezed20;

  factory ObjectLevel1Freezed20.createFromRandom(RandomValues randomValues) =>
      _ObjectLevel1Freezed20(
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
}
