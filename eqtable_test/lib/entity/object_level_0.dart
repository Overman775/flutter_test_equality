import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import 'object_level_1.dart';

@immutable
class ObjectLevel0 extends Equatable {
  const ObjectLevel0(
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
  List<Object?> get props => [objects];
}
