import 'package:get/get.dart';

class WordCompleteController {
  var points = 0.obs;

  void verifyPoints() {
    if (points.value <= 250) {
      points.value += 50;
    } else {
      points.value = 0;
    }
    print(points);
  }

  Map<String, dynamic> listWordsToCompleteLVL1 = {
    'images': [
      'placa.jpeg',
      'praia.jpg',
      'globo.jpeg',
      'groselha.png',
    ],
    'fields': [
      '___ca',
      '___ia',
      '___bo',
      '___selha',
    ]
  };
  Map<String, dynamic> listWordsToCompleteLVL2 = {
    'images': [
      'diploma.jpeg',
      'professor.png',
      'floresta.jpeg',
      'planeta.jpeg',
      'afluente.jpeg',
      'atlas.jpeg',
      'bicicleta.jpeg',
      'bíblia.jpeg',
      'chicletes.jpeg',
      'ciclistas.jpeg',
      'ciclo.jpeg',
    ],
    'fields': [
      'di___ma',
      '___fessor',
      '___resta',
      '___neta',
      'a___ente',
      'a___s',
      'bici___ta',
      'bí___a',
      'chi___tes',
      'ci___stas',
      'ci___',
    ]
  };
  Map<String, dynamic> listWordsToCompleteLVL3 = {
    'images': [
      'clara.jpeg',
      'clava.jpeg',
      'conflito.jpeg',
      'crédito.png',
      'disciplina.jpeg',
      'explosão.jpeg',
      'flauta.jpeg',
      'flores.jpeg',
      'frentista.jpg',
      'frutas.jpeg',
      'glória.jpeg',
      'inglês.jpeg',
      'nublado.jpeg',
      'planta.jpeg',
      'plantação.jpeg',
      'público.jpeg',
      'reflexo.jpeg',
      'súplica.jpeg',
      'teclado.jpeg',
      'placa.jpeg',
      'praia.jpg',
      'globo.jpeg',
      'groselha.png',
      'diploma.jpeg',
      'professor.png',
      'floresta.jpeg',
      'planeta.jpeg',
      'afluente.jpeg',
      'atlas.jpeg',
      'bicicleta.jpeg',
      'bíblia.jpeg',
      'chicletes.jpeg',
      'ciclistas.jpeg',
      'ciclo.jpeg',
    ],
    'fields': [
      '___ra',
      '___va',
      'con___to',
      '___dito',
      'disci___na',
      'ex___são',
      '___uta',
      '___res',
      '___ntista',
      '___tas',
      '___ria',
      'in___s',
      'nu___do',
      '___nta',
      '___ntação',
      'pú___co',
      're___xo',
      'sú___ca',
      'te___do',
      '___ca',
      '___ia',
      '___bo',
      '___selha',
      'di___ma',
      '___fessor',
      '___resta',
      '___neta',
      'a___ente',
      'a___s',
      'bici___ta',
      'bí___a',
      'chi___tes',
      'ci___stas',
      'ci___',
    ]
  };
}
