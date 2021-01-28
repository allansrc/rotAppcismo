import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class WordCompleteController extends GetxController {
  List<TextEditingController> listTextCTRL;
  Map<String, dynamic> listWordsToCompleteByLVL;

  final currentLVL = 1.obs;
  final currentLength = 0.obs;

  getTip(BuildContext context) async {
    startLVL();
    await Future.delayed(Duration(milliseconds: 500));
    AwesomeDialog(
      context: context,
      dialogType: DialogType.INFO,
      animType: AnimType.BOTTOMSLIDE,
      title: 'Instruções',
      desc: 'Escreva a palavra completa do exemplo com a sílaba que falta! 😊',
      btnOkOnPress: () {},
    )..show();
  }

  startLVL() {
    if (currentLVL.value == 1) {
      // listTextCTRL.clear();
      listWordsToCompleteByLVL = listWordsToCompleteLVL1;
      currentLength.value = listWordsToCompleteLVL1['images']?.length;
      listTextCTRL = List.generate(listWordsToCompleteLVL1['images']?.length, (i) => TextEditingController());
    } else if (currentLVL.value == 2) {
      // listTextCTRL.clear();
      listWordsToCompleteByLVL = listWordsToCompleteLVL2;
      currentLength.value = listWordsToCompleteLVL2['images'].length;
      listTextCTRL = List.generate(listWordsToCompleteLVL2['images']?.length, (i) => TextEditingController());
    } else {
      // listTextCTRL.clear();
      listWordsToCompleteByLVL = listWordsToCompleteLVL3;
      currentLength.value = listWordsToCompleteLVL3['images']?.length;
      listTextCTRL = List.generate(listWordsToCompleteLVL3['images']?.length, (i) => TextEditingController());
    }
  }

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
