import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traveller_app_flutter/constants.dart';
import 'package:traveller_app_flutter/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var kTextColor2 = kTextColor;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travels App',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme:
            GoogleFonts.poppinsTextTheme().apply(displayColor: kTextColor2),
      ),
      home: HomeScreen(),
    );
  }
}
