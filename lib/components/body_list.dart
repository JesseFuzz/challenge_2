import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  final Widget listRow;
  //final Widget listColumn;
  const MyBody({
    super.key,
    required this.listRow,

    //required this.listColumn
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color.fromARGB(242, 242, 242, 1000),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 350, vertical: 320),
        child: Column(
            children: [listRow], crossAxisAlignment: CrossAxisAlignment.start),
      ),
    );
  }
}
