import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'package:calculadora_imc/classes/pessoa.dart';

void main(List<String> arguments) {
  var pessoa = Pessoa();
  try {
    print('Calculadora IMC');
    print('Digite seu nome:');
    pessoa.setNome(calculadora_imc.lerString());

    print('Digite sua altura:');
    pessoa.setAltura(calculadora_imc.lerDouble());

    print('Digite seu peso:');
    pessoa.setPeso(calculadora_imc.lerDouble());

    double imcValue = calculadora_imc.imc(pessoa.getPeso(), pessoa.getAltura());
    String mensagemImc = calculadora_imc.mensagemImc(imcValue);

    print('Olá ${pessoa.getNome()}, Seu IMC é $imcValue, $mensagemImc');
  } catch (erro) {
    print('Ocorreu um erro, execute a aplicação novamente');
  }
}
