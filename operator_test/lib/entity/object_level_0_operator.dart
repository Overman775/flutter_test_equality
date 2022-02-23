import 'package:flutter/foundation.dart';

class ObjectLevel0Operator {
  ObjectLevel0Operator(
    this.objects,
  );

  final List<Object> objects;

  ObjectLevel0Operator copyWith({
    List<Object>? objects,
  }) {
    return ObjectLevel0Operator(
      objects ?? this.objects,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ObjectLevel0Operator && listEquals(other.objects, objects);
  }

  @override
  int get hashCode => objects.hashCode;
}
