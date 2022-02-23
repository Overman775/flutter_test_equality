import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:operator_test/entity/random_values.dart';

part 'object_level_1_freezed.freezed.dart';

@freezed
class ObjectLevel1Freezed with _$ObjectLevel1Freezed {
  factory ObjectLevel1Freezed({
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
  }) = _ObjectLevel1Freezed;

  factory ObjectLevel1Freezed.createFromRandom(RandomValues randomValues) =>
      _ObjectLevel1Freezed(
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
