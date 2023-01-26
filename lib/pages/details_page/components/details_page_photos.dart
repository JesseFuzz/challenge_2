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
    final screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screenSize.width * (72 / 375),
            height: screenSize.width * (338 / 375),
            margin: EdgeInsets.only(
              left: screenSize.width * (26 / 375),
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  // Color.fromARGB(0, 255, 255, 255),
                  Colors.white,
                  Colors.orange
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topRight,
              ),
            ),
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: screenSize.width * (72 / 375),
                  margin: EdgeInsets.only(
                    bottom: screenSize.width * (16 / 375),
                    // top: screenSize.width * (36 / 375),
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(0, 255, 255, 255),
                        Colors.white,
                        Colors.red
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomCenter,
                    ),
                    border: Border.all(
                      width: 3,
                      color: Theme.of(context).backgroundColor,
                    ),
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image(
                    height: screenSize.width * 0.192, //72
                    width: screenSize.width * 0.192,
                    fit: BoxFit.fitHeight,
                    image: AssetImage(widget.petModel.imageAssetPng),
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
                    width: screenSize.width * 0.928, //348
                    height: screenSize.width * 0.928,
                    decoration: BoxDecoration(
                      color: Color(int.parse('0xFF${widget.petModel.color}')),
                      // convertColor(widget.petModel.backgroundColor),
                      borderRadius: BorderRadius.circular(174),
                    ),
                    child: Image.asset(
                      widget.petModel.imageAssetPng,
                      alignment: Alignment.bottomLeft,
                      width: screenSize.width * (348 / 375),
                      height: screenSize.width * (348 / 375),
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
