import 'package:flutter/material.dart';

class DetailMessage extends StatelessWidget {
  const DetailMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Détail Message"),
        ),
        body: Center(
          child: Text("Message....."),
        ));
  }
}
