import 'package:flutter/cupertino.dart';

@immutable
class RandomValues {
  final bool randomBool;
  final double randomDouble;
  final int randomInt;
  final String randomString;

  const RandomValues({
    required this.randomBool,
    required this.randomDouble,
    required this.randomInt,
    required this.randomString,
  });
}
