import 'package:rotappcismo/model/tile_model.dart';

int points = 0;
int cardOpened = 0;
int selectedTileIndex;
String selectedImagePath = "";
bool cardSelected = false;

List<TileModel> pairs = [];
List<TileModel> visiblePairs = [];

List<TileModel> getPairs() {
  List<TileModel> pairs = [];
  // 1
  TileModel tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/afluente.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('afluente');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/afluente.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('afluente');
  pairs.add(tileModel);

  // 2
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/atlas.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('atlas');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/atlas.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('atlas');
  pairs.add(tileModel);

  // 3
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/bíblia.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('bíblia');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/bíblia.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('bíblia');
  pairs.add(tileModel);

  // 4
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/bicicleta.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('bicicleta');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/bicicleta.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('bicicleta');
  pairs.add(tileModel);

  // 8
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/chicletes.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('chicletes');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/chicletes.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('chicletes');
  pairs.add(tileModel);

  // 7
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/ciclistas.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('ciclistas');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/ciclistas.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('ciclistas');
  pairs.add(tileModel);

  // 12
  ///////
  // 9
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/ciclo.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('ciclo');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/ciclo.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('ciclo');
  pairs.add(tileModel);

  // 10
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/clara.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('afluente');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/clara.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('clara');
  pairs.add(tileModel);

  tileModel = new TileModel();
  // 11
  tileModel.setImagePath('assets/memo_g/clava.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('clava');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/clava.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('clava');
  pairs.add(tileModel);

  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/conflito.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('conflito');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/conflito.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('conflito');
  pairs.add(tileModel);

  // 5
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/criança.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('criança');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/criança.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('criança');
  pairs.add(tileModel);

  // 6
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/diploma.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(false);
  tileModel.setName('diploma');
  pairs.add(tileModel);
  tileModel = new TileModel();
  tileModel.setImagePath('assets/memo_g/diploma.jpeg');
  tileModel.setIsSelected(false);
  tileModel.setIsNamed(true);
  tileModel.setName('diploma');
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
