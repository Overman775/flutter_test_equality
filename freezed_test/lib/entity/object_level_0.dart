import 'package:freezed_annotation/freezed_annotation.dart';

import 'object_level_1.dart';

part 'object_level_0.freezed.dart';

@freezed
class ObjectLevel0 with _$ObjectLevel0 {
  const factory ObjectLevel0(
    List<ObjectLevel1> objects,
  ) = _ObjectLevel0;
}
