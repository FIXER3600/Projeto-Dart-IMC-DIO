import 'dart:io';

import 'exception/altura_invalida.dart';
import 'exception/nome_invalido.dart';
import 'exception/peso_invalido.dart';
import 'model/console_utils.dart';
import 'model/pessoa.dart';

void execute() {
  print('Calculadora IMC');
  String nome;
  double altura;
  double peso;
  nome = ConsoleUtils.lerStringComTexto('Digite o nome do usuário:');
  try {
    if (nome.trim() == '') {
      throw NomeInvalido();
    }
  } on NomeInvalido {
    nome = 'Padrão';
    print(NomeInvalido);
    exit(0);
  }

     peso = ConsoleUtils.lerDoubleComTexto(
        '${nome}, digite o peso em kg:');
    try {
    if (peso.runtimeType!=double) {
      throw PesoInvalido();
    }
  } on PesoInvalido {
    peso = 0;
    print(PesoInvalido);
    exit(0);
  }
    altura = ConsoleUtils.lerDoubleComTexto(
        '${nome}, digite a altura em metros:');
 
try {
    if (altura.runtimeType!=double) {
      throw AlturaInvalida();
    }

  } on AlturaInvalida {
    altura = 0;
    print(AlturaInvalida);
    exit(0);
  }
      var pessoa = Pessoa(nome, peso, altura);
      print(pessoa.retornaImc(peso, altura));
}
