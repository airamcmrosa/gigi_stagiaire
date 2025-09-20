enum Personagem {
  madameDubois('Madame Dubois'),
  monsieurLebrun('Monsieur Lebrun'),
  pierre('Pierre'),
  marie('Marie'),
  antoine('Antoine'),
  ordinateur('Ordinateur'),
  caioAuTelephone('Caio'),
  clientAuTelephone('Client'),
  monsieurMboupAuTelephone('Monsieur Mboup'),
  madameNiangSurInternet('Madame Niang'),
  caioSurInternet('Caio'),
  monsieurCavillotSurInternet('Monsieur Cavillot');

  final String displayName;

  const Personagem(this.displayName);

}

// Classe auxiliar para gerenciar as ilustrações de cada personagem
class PersonagemIlustracao {
  final Personagem personagem;

  PersonagemIlustracao(this.personagem);

  String get ilustracaoInicial {
    // Retorna o caminho da ilustração inicial do personagem
    return 'assets/personagens/${personagem.name}_inicial.png';
  }

  String get ilustracaoSucesso {
    // Retorna o caminho da ilustração de sucesso do personagem
    return 'assets/personagens/${personagem.name}_sucesso.png';
  }

  String get ilustracaoFalha {
    // Retorna o caminho da ilustração de falha do personagem
    return 'assets/personagens/${personagem.name}_falha.png';
  }
}