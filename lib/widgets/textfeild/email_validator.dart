class EmailValidator {
  static final RegExp _emailRegExp = RegExp(
    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
    caseSensitive: false,
  );

  static bool isValid(String email) {
    return _emailRegExp.hasMatch(email);
  }
}
