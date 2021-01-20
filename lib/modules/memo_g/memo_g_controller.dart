import 'package:get/get.dart';

import '../../model/tile_model.dart';

class MemogameController extends GetxController {
  int selectedTileIndex;

  final points = 0.obs;
  final selectedImagePath = "".obs;
  final cardSelected = false.obs;

  final pairs = <TileModel>[].obs;
  final visiblePairs = <TileModel>[].obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    pairs.value = getPairsLVL1();
    pairs.value.shuffle();

    visiblePairs.value = pairs.value;
    cardSelected.value = true;
    Future.delayed(Duration(seconds: 4), () {
      visiblePairs.value = getQuestionsLVL1();
      cardSelected.value = false;
      print('done');
    });
  }

  void onTurnCard({int pairIndex}) {
    if (!cardSelected.value) {
      if (selectedImagePath.value != '') {
        if (selectedImagePath.value == pairs[pairIndex].getImagePath) {
          print('U got it');
          cardSelected.value = true;
          Future.delayed(Duration(milliseconds: 850), () {
            cardSelected.value = false;
            points.value += 100;
            selectedImagePath.value = '';

            pairs[pairIndex].setImagePath('');
            pairs[selectedTileIndex].setImagePath('');
          });
        } else {
          print('missing out it');
          cardSelected.value = true;
          Future.delayed(Duration(milliseconds: 850), () {
            points.value -= 50;
            cardSelected.value = false;
            pairs[pairIndex].setIsSelected(false);
            pairs[selectedTileIndex].setIsSelected(false);
            selectedImagePath.value = '';
          });
        }
      } else {
        selectedTileIndex = pairIndex;
        selectedImagePath.value = pairs[pairIndex].getImagePath;
      }
      pairs[pairIndex].setIsSelected(true);
      print('click');
    }
  }

  //
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  //

  List<TileModel> getPairsLVL1() {
    List<TileModel> pairs = [];
    TileModel tileModel = new TileModel();

    // 1
    tileModel.setImagePath('assets/memo_g/açaí.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 2
    tileModel.setImagePath('assets/memo_g/afluente.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 3
    tileModel.setImagePath('assets/memo_g/atlas.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 4
    tileModel.setImagePath('assets/memo_g/banco.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 5
    tileModel.setImagePath('assets/memo_g/barco.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 6
    tileModel.setImagePath('assets/memo_g/batatas.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 7
    tileModel.setImagePath('assets/memo_g/bíblia.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 8
    tileModel.setImagePath('assets/memo_g/bicicleta.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 9
    tileModel.setImagePath('assets/memo_g/biscoitos.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 10
    tileModel.setImagePath('assets/memo_g/boneca.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 11
    tileModel.setImagePath('assets/memo_g/carro.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 12
    tileModel.setImagePath('assets/memo_g/casa.jpeg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    return pairs;
  }

  List<TileModel> getQuestionsLVL1() {
    List<TileModel> pairs = [];
    TileModel tileModel = new TileModel();

    // 1
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 2
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 3
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 4
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 5
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 6
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 7
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 8
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 9
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 10
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 11
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    tileModel = new TileModel();
    // 12
    tileModel.setImagePath('assets/memo_g/questions.jpg');
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
    pairs.add(tileModel);

    return pairs;
  }
}
