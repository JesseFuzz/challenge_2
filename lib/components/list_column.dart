import 'package:flutter/material.dart';

class MyListTile extends StatefulWidget {
  const MyListTile({super.key});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [Text(' data'), Text(' data'), Text(' data')],
    );
  }
}
