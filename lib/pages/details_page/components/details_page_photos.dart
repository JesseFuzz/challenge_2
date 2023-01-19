import 'package:flutter/material.dart';

class DetailsPagePhotos extends StatefulWidget {
  const DetailsPagePhotos({super.key});

  @override
  State<DetailsPagePhotos> createState() => _DetailsPagePhotosState();
}

class _DetailsPagePhotosState extends State<DetailsPagePhotos> {
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
                  child: const Image(
                    height: 70,
                    width: 50,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/franca.png'),
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
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(170),
                    ),
                    child: Image.asset(
                      'assets/franca.png',
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
