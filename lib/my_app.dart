import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_home_page_teste.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //primaryColor: const Color(0xFFFF5F51),
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
        scaffoldBackgroundColor: const Color.fromARGB(242, 242, 242, 1000),
      ),
      home: const MyHomePageTeste(),
    );
  }
}
