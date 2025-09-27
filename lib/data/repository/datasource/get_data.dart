import 'package:flutter/services.dart' show rootBundle;
import 'domain/questions.dart';
import 'dart:convert';
//Não sei se esta correto essa parte de import 

class GetDado {

 	Future<List<Questions>> carregandoPerguntas() async{
        //aqui eu leio o arquivo
		String load = await rootBundle.loadString('asset/json/perguntas.json');
		//aqui eu decodifico ele
        final Map<String,dynamic> dados =json.decode(load);
        final List<dynamic> lista = dados["perguntas"];
        //e aqui passo os dados pra Questions
        return lista.map((e)=>GetDado.fromJson(e)).toList();
    }
}