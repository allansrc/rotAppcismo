import 'package:rotappcismo/model/tile_model.dart';

int points = 0;
int selectedTileIndex;
String selectedImagePath = "";
bool cardSelected = false;

List<TileModel> pairs = [];
List<TileModel> visiblePairs = [];

List<TileModel> getPairs() {
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

List<TileModel> getQuestions() {
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
