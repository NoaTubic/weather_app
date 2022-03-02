import 'package:equatable/equatable.dart';

abstract class BaseEntity extends Equatable {
  final String conditionIconUrl;
  const BaseEntity({
    required this.conditionIconUrl,
  });

  String get fullConditionUrl {
    return 'https:' + conditionIconUrl;
  }
}
