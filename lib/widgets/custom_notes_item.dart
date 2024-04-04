import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key, required this.itemColor});
  final Color itemColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, top: 16, bottom: 16),
      decoration: BoxDecoration(
        color: itemColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Build your Career with Mario Ktkt',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 25,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 24,
            ),
            child: Text(
              'Apr3, 2024',
              style: TextStyle(
                color: Colors.black.withOpacity(.7),
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
