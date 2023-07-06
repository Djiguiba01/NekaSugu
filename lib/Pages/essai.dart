import 'package:flutter/material.dart';

class essai extends StatelessWidget {
  const essai({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.red,
        )),
        Expanded(
            child: Container(
          color: Colors.red,
        )),
        Expanded(
            child: Container(
          height: 50,
          color: Colors.red,
        )),
      ],
    );
  }
}
