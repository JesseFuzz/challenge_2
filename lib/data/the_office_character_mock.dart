import '../models/the_office_character_model.dart';

class TheOfficeCharacterMock extends TheOfficeCharacterModel {
  List<TheOfficeCharacterModel> dummyCharacters = [
    TheOfficeCharacterModel(
      'Michael Scott',
      'assets/michael.jpeg',
      'Regional Manager',
      '57 years old',
      '2.5 kms away',
    ),
    TheOfficeCharacterModel(
      'Dwight Schrute',
      'assets/dwight.jpeg',
      'Assistant to Regional Manager',
      '52 years old',
      '2.6 kms away',
    ),
    TheOfficeCharacterModel(
      'Jan Levinson',
      'assets/jan.jpeg',
      'Vice President of Northeast Sales',
      '54 years old',
      '2.9 kms away',
    ),
    TheOfficeCharacterModel(
      'Pam Beesly',
      'assets/pam.jpeg',
      'Receptionist',
      '43 years old',
      '3,1 kms away',
    ),
    TheOfficeCharacterModel(
      'Kevin Malone',
      'assets/kevin.jpeg',
      'Accountant',
      '50 years old',
      '2.5 kms away',
    ),
  ];
  TheOfficeCharacterMock(
    super.name,
    super.imageAssetPath,
    super.role,
    super.age,
    super.billing,
  );
}
