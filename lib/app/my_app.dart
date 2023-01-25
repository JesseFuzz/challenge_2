import 'package:desafio_2/app/theme/theme_data.dart';
import 'package:flutter/material.dart';

import '../pages/details_page/details_page.dart';
import '../pages/home_page/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: PetThemeData.myLightTheme,
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const MyHomePage(),
        '/details': (BuildContext context) => const DetailsPage(),
      },
    );
  }
}
