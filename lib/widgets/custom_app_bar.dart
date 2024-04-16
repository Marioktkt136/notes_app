import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Row(
        children: [
          const SizedBox(
              // width: 24,
              // height: 70,
              ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          const Spacer(),
          CustomSearchIcon(
            icon: icon,
          ),
        ],
      ),
    );
  }
}
