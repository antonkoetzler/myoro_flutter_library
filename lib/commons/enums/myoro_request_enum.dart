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

  bool get isIdle => this == idle;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isError => this == error;
}
