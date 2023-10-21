import 'dart:convert';
import 'dart:io';

double? lerDouble() {
  return double.tryParse(lerString());
}

String lerString() {
  return stdin.readLineSync(encoding: utf8) ?? "";
}

double imc(double? peso, altura) {
  return ((peso ?? 0) / ((altura ?? 0) * (altura ?? 0)));
}

String mensagemImc(double imc) {
  switch (imc) {
    case < 16:
      return "Magreza Grave";
    case >= 16 && < 17:
      return "Magreza Moderada";
    case >= 17 && < 18.5:
      return "Magreza Leve";
    case >= 18.5 && < 25:
      return "Saudável";
    case >= 25 && < 30:
      return "Sobrepeso";
    case >= 30 && < 35:
      return "Obesidade Grau I";
    case >= 35 && < 40:
      return "Obesidade Grau II (severa)";
    case >= 40:
      return "Obesidade grau III (mórbida)";
    default:
      return "Erro, tente novamente";
  }
}
