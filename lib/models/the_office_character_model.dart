class TheOfficeCharacterModel {
  final String name;
  final String imageAssetPath;
  final String breed;
  final String age;
  final String sex;
  final String location;
  bool isSelected = false;

  TheOfficeCharacterModel({
    required this.location,
    required this.name,
    required this.imageAssetPath,
    required this.breed,
    required this.age,
    required this.sex,
  });
}
