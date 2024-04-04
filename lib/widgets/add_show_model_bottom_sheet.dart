import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hintText: 'Description',
            maxLines: 5,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
