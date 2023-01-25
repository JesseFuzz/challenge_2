import 'package:flutter/material.dart';

import '../models/pet_filter_model.dart';

class PetFilterMock {
  List<PetFilterModel> dummyFilters = [
    PetFilterModel(
      type: '',
      icon: const Icon(Icons.settings),
    ),
    PetFilterModel(
      type: 'Dogs',
      icon: const Icon(Icons.pets),
    ),
    PetFilterModel(
      type: 'Cats',
      icon: const Icon(Icons.pets),
    ),
    PetFilterModel(
      type: 'Birds',
      icon: const Icon(Icons.pets),
    ),
    PetFilterModel(
      type: 'other',
      icon: const Icon(Icons.pets),
    ),
  ];
}
