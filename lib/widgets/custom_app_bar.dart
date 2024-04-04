import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 70),
      child: Row(
        children: [
          SizedBox(
              // width: 24,
              // height: 70,
              ),
          Text(
            'Notes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          Spacer(),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
