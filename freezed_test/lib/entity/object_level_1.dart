import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_level_1.freezed.dart';

@freezed
class ObjectLevel1 with _$ObjectLevel1 {
  const factory ObjectLevel1({
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
  }) = _ObjectLevel1;
}
