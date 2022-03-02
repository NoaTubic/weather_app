import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure_messages.dart';
part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.offline() = _Offline;

  const factory Failure.unexpectedError() = _UnexpectedError;
}
