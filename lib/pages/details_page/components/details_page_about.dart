import 'package:flutter/material.dart';

import '../../../models/pet_model.dart';

class DetailsPageAbout extends StatefulWidget {
  final PetModel petModel;
  const DetailsPageAbout({super.key, required this.petModel});

  @override
  State<DetailsPageAbout> createState() => _DetailsPageAboutState();
}

class _DetailsPageAboutState extends State<DetailsPageAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.petModel.about,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
