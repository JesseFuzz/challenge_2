import 'package:flutter/material.dart';

class CharacterFilterModel {
  final String type;
  final Icon icon;

  bool isSelected = false;

  CharacterFilterModel({
    required this.type,
    required this.icon,
  });
}
