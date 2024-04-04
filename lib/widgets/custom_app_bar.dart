import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 70),
      child: Row(
        children: [
          SizedBox(
              // width: 24,
              // height: 70,
              ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Spacer(),
          CustomSearchIcon(
            icon: icon,
          ),
        ],
      ),
    );
  }
}
