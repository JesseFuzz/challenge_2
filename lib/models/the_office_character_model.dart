class TheOfficeCharacterModel {
  final String name;
  final String imageAssetPath;
  final String position;
  final String age;
  final String location;
  bool isSelected = false;

  TheOfficeCharacterModel({
    required this.name,
    required this.imageAssetPath,
    required this.position,
    required this.age,
    required this.location,
  });
}
