import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/details_page/details_page.dart';
import '../pages/home_page/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFFFF5F51,
          {
            50: Color(0xFFFFE0E0),
            100: Color(0xFFFFBDBD),
            200: Color(0xFFFF9B9B),
            300: Color(0xFFFF7979),
            400: Color(0xFFFF5656),
            500: Color(0xFFFF3333),
            600: Color(0xFFF51C1C),
            700: Color(0xFFE41111),
          },
        ),
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const MyHomePage(),
        '/details': (BuildContext context) => const DetailsPage(),
      },
    );
  }
}
