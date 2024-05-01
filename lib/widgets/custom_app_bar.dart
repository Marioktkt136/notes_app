import 'package:flutter/material.dart';
import 'package:notes_app/views/error_loges_page.dart';
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
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ErrorLogsPage();
                      },
                    ),
                  );
                },
                value: 1,
                child: const Text(
                  'Error Logs',
                ),
              ),
            ];
          }),
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
