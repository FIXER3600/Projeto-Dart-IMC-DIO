class AlturaInvalida implements Exception {
  String error() => 'Altura Inválida!';
   @override
  String toString() {
    return 'AlturaInvalidaException: ${error()}';
  }
}
