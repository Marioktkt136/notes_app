import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_app_home_page.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, fontFamily: 'Poppins'),
      home: const NotesAppHomePage(),
    );
  }
}
