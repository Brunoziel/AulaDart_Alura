// ignore: file_names
void main() {
  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);

  Frutas banana1 = Frutas('Banana', 75, 'Amarela', 'Doce', 12);

  Nozes amendoin1 = Nozes("Amendoin", 2, "Marrom", "Salgado", 20, 35);

  Citricas limao1 = Citricas("Limão", 100, "Verde", "Azendo", 5, 9);

  mandioca1.printAlimento();
  banana1.printAlimento();
  amendoin1.printAlimento();
  limao1.printAlimento();
  mandioca1.cozinhar();
  banana1.estaMadura(15);
  
  amendoin1.fazerMassa();
}

//Criando a classe pai alimento
class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este $nome pesa $peso gramas e é $cor");
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o(a) $nome está cozinhado!");
    } else {
      print("Nem precisa cozinhar mermão");
    }
  }

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}

class Frutas extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Frutas(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        'A sua $nome foi colhida a $diasDesdeColheita dias e precisa de $diasParaMadura dias para poder comer! \n'
        'Ela está Madura? $isMadura');
  }

  @override
  void assar() {
    print("Catar a fruta");
  }

  @override
  void fazerMassa() {
    print("Misturar a fruta com Farinha, açucar, ovos...");
  }

  @override
  void separarIngredientes() {
    print("Colocar no forno");
  }
}

class Citricas extends Frutas {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
}

class Nozes extends Frutas {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
  
  @override
  void fazerMassa() {
    print("Tirar a casca");
    super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIngredientes();

  void fazerMassa();

  void assar();
}
