import 'package:desafio_2/data/pet_mock.dart';
import 'package:flutter/material.dart';

import '../../../models/pet_model.dart';

class DetailsPagePhotos extends StatefulWidget {
  final PetModel petModel;
  final PetMock petMock;

  const DetailsPagePhotos({
    super.key,
    required this.petModel,
    required this.petMock,
  });

  @override
  State<DetailsPagePhotos> createState() => _DetailsPagePhotosState();
}

class _DetailsPagePhotosState extends State<DetailsPagePhotos> {
  // Color convertColor(BackgroundColor backgroundColor) {
  //   switch (backgroundColor) {
  //     case BackgroundColor.green:
  //       return Colors.green;

  //     case BackgroundColor.blue:
  //       return Colors.blue;

  //     case BackgroundColor.yellow:
  //       return Colors.yellow;

  //     case BackgroundColor.orange:
  //       return Colors.orange;

  //     case BackgroundColor.pink:
  //       return Colors.pink;

  //     case BackgroundColor.purple:
  //       return Colors.purple;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: 100,
            height: 350,
            // color: Colors.black,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(
                    left: 2,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: const Color(0xFFE9E9E9),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image(
                    height: 70,
                    width: 50,
                    fit: BoxFit.cover,
                    image: AssetImage(widget.petModel.imageAssetPath),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: -90,
                  child: Container(
                    width: 350,
                    height: 350,
                    decoration: BoxDecoration(
                      color: Color(int.parse('0xFF${widget.petModel.color}')),
                      // convertColor(widget.petModel.backgroundColor),
                      borderRadius: BorderRadius.circular(170),
                    ),
                    child: Image.asset(
                      widget.petModel.imageAssetPng,
                      alignment: Alignment.bottomLeft,
                      width: 500,
                      height: 500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
