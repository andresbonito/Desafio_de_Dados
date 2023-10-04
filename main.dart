import 'dart:io';
import 'dart:math';

void main() {
  int vitoriasUsuario = 0;
  int vitoriasComputador = 0;
  int empates = 0;
  int rodadas;

  print('Bem-vindo ao Jogo de Dados!');
  print('Digite o número de rodadas que deseja jogar:');
  rodadas = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < rodadas; i++) {
    print('\nRodada ${i + 1}:');
    int resultadoUsuario = rolarDados();
    int resultadoComputador = rolarDados();

    print('Jogador 1: $resultadoUsuario');
    print('Jogador 2: $resultadoComputador');

    if (resultadoUsuario > resultadoComputador) {
      vitoriasUsuario++;
      print('Vencedor: Jogador 1');
    } else if (resultadoComputador > resultadoUsuario) {
      vitoriasComputador++;
      print('Vencedor: Jogador 2');
    } else {
      empates++;
      print('Empate!');
    }
  }

  print('\nPlacar final:');
  print('Vitórias do Jogador 1: $vitoriasUsuario');
  print('Vitórias do Jogador 2: $vitoriasComputador');
  print('Empates: $empates');

  if (vitoriasUsuario > vitoriasComputador) {
    print('Jogador 1 é o vencedor final!');
  } else if (vitoriasComputador > vitoriasUsuario) {
    print('Jogador 2 é o vencedor final!');
  } else {
    print('Empate no placar final!');
  }
}

int rolarDados() {
  final random = Random();
  int soma = 0;

  for (int i = 0; i < 3; i++) {
    int resultado = random.nextInt(6) + 1;
    print('Dado ${i + 1}: $resultado');
    soma += resultado;
  }

  return soma;
}
