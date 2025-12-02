import 'package:faker/faker.dart' hide Color;

/// Enum used to manage the status of an asyncronous request.
enum MyoroRequestEnum {
  /// No request is being made.
  idle,

  /// Request is being executed and is loading.
  loading,

  /// Request executed successfully.
  success,

  /// Request executed unsuccessfully.
  error;

  /// Fake constructor.
  factory MyoroRequestEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// [idle] getter.
  bool get isIdle {
    return this == idle;
  }

  /// [loading] getter.
  bool get isLoading {
    return this == loading;
  }

  /// [success] getter.
  bool get isSuccess {
    return this == success;
  }

  /// [error] getter.
  bool get isError {
    return this == error;
  }
}
