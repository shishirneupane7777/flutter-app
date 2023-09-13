import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:  Colors.yellow,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: '/Loginpage',
      routes: {
        '/':(context) =>const LoginPage(),
        '/Loginpage':(context) =>const LoginPage(),
        '/Homepage':(context) =>const HomePage(),
      },
      );
  }
}


