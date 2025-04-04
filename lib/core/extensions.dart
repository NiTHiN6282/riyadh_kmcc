extension Base64ImageCleaner on String {
  String removeBase64Prefix() {
    return replaceFirst(RegExp(r'^data:image\/[a-z]+;base64,'), '');
  }
}
