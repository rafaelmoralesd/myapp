bool _containsUpperCase(String value) {
  // Expresión regular para verificar que haya al menos una letra mayúscula
  final RegExp upperCaseRegex = RegExp(r'[A-Z]');
  return upperCaseRegex.hasMatch(value);
}