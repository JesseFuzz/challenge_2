import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../components/list_row.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const MyAppBar(location: 'Cameron St., Boston'),
          Container(
            height: 100,
            color: Colors.yellow,
            padding: const EdgeInsets.all(20),
            child: Row(
              children: const [
                Expanded(
                    child: ListRow(
                  title: 'Dogs',
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ListRow(
                  title: 'Cats',
                ))
              ],
            ),
          ),

          //MyBody(listRow: MyListTile()),
        ],
      ),
    );
  }
}
