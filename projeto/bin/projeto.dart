import 'package:projeto/projeto.dart' as projeto;

void main() {

  int numero = 2;
  const String nome = "Bruno";

  //O termo "Final" funciona como const, mas pode ser indefinido inicialmente
  final String fruta;

  print('Hello $nome');

  //Uma boa prática é sempre colocar o tipo dos objetos, pois facilitará o acesso dele ao dart

  List <String> Listanomes = ["Bruno", "Italo", "Maria", "Bia"];

  print(Listanomes);
  print(Listanomes[0]);
  print(Listanomes.length);

  fruta = "maça";

  print("Meu nome é ${Listanomes[0]} e tenho $numero anos e gosto de $fruta");

}
