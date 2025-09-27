import 'domain/personagem.dart';
import 'domain/questions.dart';
import 'dart:convert';
//Não sei se esta correto essa parte de import 

class GetDado {
	final String pergunta;
    final String resposta;
    final String traducao;

    factory GetDado.fromJson(Map<String, dynamic> json){
        return New Questions()
    }

 	Future<List<Questions>> carregandoPerguntas() {
        //aqui eu leio o arquivo
		String load = await rootBundle.loadString('asset/json/perguntas.json');
		//aqui eu decodifico ele
        final List<dynamic> dados =json.decode(load);
        //e aqui passo os dados pra Questions
        return dados.map((e)=>GetDado.fromJson(e)).toList();
    }
}