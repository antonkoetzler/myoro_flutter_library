/// Extension of [String].
extension MyoroStringExtension on String {
  /// Capitalizes a [String].
  String get capitalized => isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
}
