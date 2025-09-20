import 'package:equatable/equatable.dart';
import 'package:gigi_stagiaire/domain/personagem.dart';

class Questions extends Equatable {
  final String pergunta;
  final String perguntaTraduzida;
  final String respostaCorreta;
  List<String>? respostasErradas;
  final Personagem personagem;

  Questions({
    required this.pergunta,
    required this.perguntaTraduzida,
    required this.respostaCorreta,
    required this.personagem
  });

  @override
  List<Object?> get props => [pergunta, perguntaTraduzida, respostaCorreta];
}
