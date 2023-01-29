import 'package:flutter/material.dart';

class DetailsPageAdoptButton extends StatelessWidget {
  const DetailsPageAdoptButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.width * 0.213, //80
      width: screenSize.width * 0.586, //220
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(55),
        ),
      ),
      alignment: Alignment.center,
      child: Align(
        //alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.pets,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            SizedBox(
              width: screenSize.width * 0.048, //18
            ),
            Text(
              'ADOPT',
              //mantive pois é a única com fonte branca e o resto é black e grey
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
