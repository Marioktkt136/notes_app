import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
<<<<<<< HEAD
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/models/error_model.dart';
=======
>>>>>>> parent of 211a79f (refresh notes list)
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/views/notes_app_home_page.dart';

void main() async {
  await Hive.initFlutter();
  // Hive to Notes
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  // Hive to Errors
  Hive.registerAdapter(ErrorModelAdapter());
  await Hive.openBox<NoteModel>(kErrorsBox);

  Bloc.observer = SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotesAppHomePage(),
    );
  }
}
