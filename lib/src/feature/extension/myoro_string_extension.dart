/// Extension of [String].
extension MyoroStringExtension on String {
  /// Capitalizes a [String].
  String get capitalized {
    if (isEmpty) this;
    final words = split(' ');
    return words.map((word) => '${word[0].toUpperCase()}${word.substring(1)}').join(' ');
  }

  /// Decapitalizes a [String].
  String get decapitalized {
    if (isEmpty) return this;
    return '${this[0].toLowerCase()}${substring(1)}';
  }
}
