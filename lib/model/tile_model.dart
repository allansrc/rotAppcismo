class TileModel {
  String name;
  String imagePath;
  bool isNamed;
  bool isSelected;

  TileModel({this.imagePath, this.isSelected, this.name, this.isNamed});

  void setImagePath(String getImagePath) => imagePath = getImagePath;
  void setIsSelected(bool getIsSelected) => isSelected = getIsSelected;

  String get getImagePath => imagePath;
  bool get getIsSelected => isSelected;

  void setName(String getName) => name = getName;
  void setIsNamed(bool getIsNamed) => isNamed = getIsNamed;

  String get getName => name;
  bool get getIsNamed => isNamed;
}
