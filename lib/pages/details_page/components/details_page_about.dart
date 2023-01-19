import 'package:flutter/material.dart';

class DetailsPageAbout extends StatefulWidget {
  const DetailsPageAbout({super.key});

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
        children: const [
          Text(
            'About',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "She is Shy at first, but wall warm up when she's comfortable. She is not a ranch dog that guards animals and property as she would rather be with her people; but she is comfortable around animals. She plays well with other dogs.",
            style: TextStyle(
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
