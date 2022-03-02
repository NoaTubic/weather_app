extension StringFormatMixin on String {
  String stringReplaceSpaces() {
    final pattern = RegExp('\\s+');
    return replaceAll(pattern, '+');
  }
}
