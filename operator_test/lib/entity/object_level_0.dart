import 'package:flutter/foundation.dart';

import 'object_level_1.dart';

class ObjectLevel0 {
  ObjectLevel0(
    this.objects,
  );

  final List<ObjectLevel1> objects;

  ObjectLevel0 copyWith({
    List<ObjectLevel1>? objects,
  }) {
    return ObjectLevel0(
      objects ?? this.objects,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ObjectLevel0 && listEquals(other.objects, objects);
  }

  @override
  int get hashCode => objects.hashCode;
}
