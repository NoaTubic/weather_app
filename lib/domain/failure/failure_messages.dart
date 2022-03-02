part of 'failure.dart';

extension FailureMessages on Failure {
  String getFailureMessage() {
    return map(
      offline: (_) => 'Offline',
      unexpectedError: (_) => 'Unexpected error',
    );
  }
}
