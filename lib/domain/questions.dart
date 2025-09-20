import 'package:equatable/equatable.dart';
import 'package:gigi_stagiaire/domain/personagem.dart';

class Question extends Equatable {
  final String pergunta;
  final String perguntaTraduzida;
  final String respostaCorreta;
  List<String>? respostasErradas;
  final Personagem personagem;

  Question({
    required this.pergunta,
    required this.perguntaTraduzida,
    required this.respostaCorreta,
    required this.personagem
  });

  @override
  List<Object?> get props => [pergunta, perguntaTraduzida, respostaCorreta];
}
//Criar um json com as perguntas de teste, transformar esse objeto json em um objeto entity e entao transformar num objeto question