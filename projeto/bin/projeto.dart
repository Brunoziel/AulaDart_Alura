import 'package:projeto/projeto.dart' as projeto;

void main() {

  int idade = 21;
  const String nome = "Bruno";

  //O termo "Final" funciona como const, mas pode ser indefinido inicialmente
  final String fruta;
  bool maiorDeIdade;
  int energia = 100;

  if(idade >= 18 ) {
    maiorDeIdade = true;
  } else{
    maiorDeIdade = false;
    }

  

  print('Hello $nome');

  //Uma boa prática é sempre colocar o tipo dos objetos, pois facilitará o acesso dele ao dart

  List <String> Listanomes = ["Bruno", "Italo", "Maria", "Bia"];

  print(Listanomes);
  print(Listanomes[0]);
  print(Listanomes.length);

  fruta = "maça";

  print("Meu nome é ${Listanomes[0]} e tenho $idade anos e gosto de $fruta \nSou maior de idade ? $maiorDeIdade");

  for(int i=0; i<5; i++){
    print("Conclui $i voltas");
  }

  //Metodo para retirar energia
  while(energia>0){
    print("Mais uma repetição");
    energia = energia - 10;
  }

  //TODO: Fazer outros testes
}
