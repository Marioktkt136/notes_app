import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar_for_errors_Page.dart';

class ErrorLogsPage extends StatelessWidget {
  const ErrorLogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          CustomAppBarForErrorPage(
            title: 'Error Logs',
            icon: Icons.arrow_back,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
