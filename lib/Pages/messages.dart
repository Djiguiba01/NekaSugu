import 'dart:html';

import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  //  UNE BASE DE DONNEE STATIQUE
  final envoimessage = [
    {
      "nomComplet": "Barema Djiguiba",
      "date": "58 second",
      "description": "Slt CV...",
      "photo": "djiguiba"
    },
    {
      "nomComplet": "Guindo",
      "date": "9 min second",
      "description": "Medécine....",
      "photo": "guindo"
    },
    {
      "nomComplet": "Seydou",
      "date": "12 min",
      "description": "Je suis au champs",
      "photo": "seydou"
    },
    {
      "nomComplet": "Nana",
      "date": "1h05min",
      "description": "A l'école....",
      "photo": "nana"
    },
    {
      "nomComplet": "Papa",
      "date": "2h00",
      "description": "A la maison",
      "photo": "papa"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Messages"),
      // ),
      body: Center(

          //  GENERER AUTOMATIQUEMENT LES MESSAGES QUI SONT DANS LA BASE DE DONNEE (STATIQUE)
          child: ListView.builder(
        itemCount: envoimessage.length, //=>

        itemBuilder: (context, index) {
          // Appel des variables:::::::
          final message = envoimessage[index];
          final photo = message['photo'];
          final nomComplet = message['nomComplet'];
          final description = message['description'];
          final date = message['date'];

          //  CONTENU MESSAGES AFFICHAGE QUI SONT DANS LA BASE DE DONNEE::::::::::::
          return Card(
            child: ListTile(
              leading: Image.asset("assets/images/$photo.jpg"),
              title: Text('$nomComplet ($date)'),
              subtitle: Text('$description'),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },
      )),
    );
  }
}
