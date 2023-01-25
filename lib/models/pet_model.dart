enum BackgroundColor { yellow, blue, green, orange, pink, purple }

class PetModel {
  final String name;
  final String imageAssetPath;
  final String imageAssetPng;
  final String breed;
  final String age;
  final String sex;
  final String location;
  final String about;
  // final BackgroundColor backgroundColor;
  final String color;

  bool isSelected = false;

  PetModel({
    required this.color,
    // required this.backgroundColor,
    required this.about,
    required this.imageAssetPng,
    required this.location,
    required this.name,
    required this.imageAssetPath,
    required this.breed,
    required this.age,
    required this.sex,
  });
}
