import 'package:equatable/equatable.dart';

class ObjectLevel0Equatable extends Equatable {
  ObjectLevel0Equatable(
    this.objects,
  );

  final List<Object> objects;

  ObjectLevel0Equatable copyWith({
    List<Object>? objects,
  }) {
    return ObjectLevel0Equatable(
      objects ?? this.objects,
    );
  }

  @override
  List<Object?> get props => [objects];
}
