import 'package:flutter/material.dart';

import '../models/the_office_filter_model.dart';

class TheOfficeFilterMock {
  List<CharacterFilterModel> dummyFilters = [
    CharacterFilterModel(
      type: '',
      icon: const Icon(Icons.settings),
    ),
    CharacterFilterModel(
      type: 'Dogs',
      icon: const Icon(Icons.pets),
    ),
    CharacterFilterModel(
      type: 'Cats',
      icon: const Icon(Icons.pets),
    ),
    CharacterFilterModel(
      type: 'Birds',
      icon: const Icon(Icons.pets),
    ),
    CharacterFilterModel(
      type: 'other',
      icon: const Icon(Icons.pets),
    ),
  ];
}
