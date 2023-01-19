import 'package:flutter/material.dart';

class MyAdoptButtonComponent extends StatelessWidget {
  const MyAdoptButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 220,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 251, 96, 49),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(64),
        ),
      ),
      alignment: Alignment.center,
      child: Align(
        //alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 2),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'ADOPT',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
