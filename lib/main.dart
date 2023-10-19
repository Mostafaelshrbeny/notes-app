import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/views/notes.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // textTheme: TextTheme(headline1: TextStyle(fontFamily: ))
        fontFamily: GoogleFonts.poppins.toString(),
      ),
      home: const Notes(),
    );
  }
}
