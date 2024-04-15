import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes/notes_cubit.dart';
import 'package:notes_app/widgets/add_show_model_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesAppHomePage extends StatefulWidget {
  const NotesAppHomePage({super.key});

  @override
  State<NotesAppHomePage> createState() => _NotesAppHomePageState();
}

class _NotesAppHomePageState extends State<NotesAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          elevation: 30,
          splashColor: Colors.blue.withOpacity(0.4),
          backgroundColor: Colors.green.withOpacity(1),
          hoverColor: Colors.blueAccent.withOpacity(0.4),
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 3,
              context: context,
              builder: (context) {
                return const AddNotesBottomSheet();
              },
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
