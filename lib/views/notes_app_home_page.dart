import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_show_model_bottom_sheet.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_list_view.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesAppHomePage extends StatelessWidget {
  const NotesAppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 30,
        splashColor: Colors.blue.withOpacity(0.4),
        backgroundColor: Colors.green.withOpacity(1),
        hoverColor: Colors.blueAccent.withOpacity(0.4),
        onPressed: () {
          showModalBottomSheet(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
