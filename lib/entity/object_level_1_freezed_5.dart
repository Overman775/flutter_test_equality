import 'package:freezed_annotation/freezed_annotation.dart';
import 'random_values.dart';

part 'object_level_1_freezed_5.freezed.dart';

@freezed
class ObjectLevel1Freezed5 with _$ObjectLevel1Freezed5 {
  factory ObjectLevel1Freezed5({
    required int intVal,
    required String stringVal,
    required double doubleVal,
    required num numVal,
    required bool boolVal,
  }) = _ObjectLevel1Freezed5;

  factory ObjectLevel1Freezed5.createFromRandom(RandomValues randomValues) =>
      _ObjectLevel1Freezed5(
        intVal: randomValues.randomInt,
        stringVal: randomValues.randomString,
        doubleVal: randomValues.randomDouble,
        numVal: randomValues.randomInt,
        boolVal: randomValues.randomBool,
      );
}
