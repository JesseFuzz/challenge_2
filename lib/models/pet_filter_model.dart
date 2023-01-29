import 'package:flutter/material.dart';

class PetFilterModel {
  final String type;
  final Icon icon;

  bool isSelected = false;

  PetFilterModel({
    required this.type,
    required this.icon,
  });
}
