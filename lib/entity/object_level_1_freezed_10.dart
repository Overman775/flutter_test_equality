import 'package:freezed_annotation/freezed_annotation.dart';
import 'random_values.dart';

part 'object_level_1_freezed_10.freezed.dart';

@freezed
class ObjectLevel1Freezed10 with _$ObjectLevel1Freezed10 {
  factory ObjectLevel1Freezed10({
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
  }) = _ObjectLevel1Freezed10;

  factory ObjectLevel1Freezed10.createFromRandom(RandomValues randomValues) =>
      _ObjectLevel1Freezed10(
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
