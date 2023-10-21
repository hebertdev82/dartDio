import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  test('imc', () {
    expect(imc(100, 1.74).truncate(), 33);
  });

  test('mensagemImc', () {
    expect(mensagemImc(33), "Obesidade grau I");
  });
}
