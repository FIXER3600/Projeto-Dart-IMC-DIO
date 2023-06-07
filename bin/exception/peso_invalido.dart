class PesoInvalido implements Exception {
  String error() => 'Peso Inválido!';
   @override
  String toString() {
    return 'PesoInvalidoException: ${error()}';
  }
}
