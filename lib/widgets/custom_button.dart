import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: KPrimaryColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(1, 1),
            )
          ]),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
