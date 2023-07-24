import 'package:flutter/material.dart';
import 'package:nekasugu/Pages/inscriptionPage.dart';
import 'AccueilPages/SousPages/PosteDetail.dart';
import 'Pages/Accueil.dart';
import 'Pages/bienvenuePage.dart';
import 'Pages/connexionPage.dart';
import 'Pages/essai.dart';
import 'Pages/voirinscription.dart';
import 'Pages/messages.dart';
import 'package:get/get.dart';
import 'dart:ui';

void main() {
  runApp(const NekaSugu());
}

class NekaSugu extends StatefulWidget {
  const NekaSugu({super.key});

  @override
  State<NekaSugu> createState() => _NekaSuguState();
}

// PIED DE PAGE::::::::::::::::::
class _NekaSuguState extends State<NekaSugu> {
  // {setCurrentIndex} Permet de sauvegarder le numéro actuel(icon)
//   Et méthode qui met à jours le numéro de pages
  int _currentIndex = 0;
  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "NekaSugu",
      debugShowCheckedModeBanner: false, // Faire disparaçitre {DEBUG}
      // theme: ThemeData(scaffoldBackgroundColor: Color(0xFFF5F5F3)),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        // "/": (context) => Connexion(),
        "Accueil": (context) => Accueil(),
        "PosteDetail": (context) => PosteDetail(),
        "ConnexionPage": (context) => ConnexionPage(),
      },
      home: Scaffold(
        // appBar: AppBar(
        //   //ENTETE CONTENUES DES DIFFERENTES PAGES
        //   title: [
        //     Text("Accueil"),
        //     Text("Message"),
        //     Text("Connexion"),
        //     Text("Inscription"),
        //   ][_currentIndex],
        // ),

        // body: Accueil(),
        body: [
          // essai(),
          BienvenuePage(),
          inscriptionPage(),
          ConnexionPage(),
          Accueil(),
          Message(),
          Inscription(),
        ][_currentIndex],

        // bottomNavigationBar: BottomNavigationBar(
        //     // Appel Méthode de sauvegade {setCurrentIndex}
        //     currentIndex: _currentIndex,
        //     onTap: (index) => setCurrentIndex(index), //1:::::::
        //     // type: BottomNavigationBarType.fixed, //2::::::::

        //     // Couleur Elément (menu) selectionné
        //     selectedItemColor: Colors.teal,
        //     // Couleur Elément(menu) non selectionné
        //     unselectedItemColor: Colors.grey,
        //     //
        //     iconSize: 32,
        //     // elevation: 30,
        //     items: const [
        //       // Accueil ::::::::::::::::
        //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),

        //       // Message ::::::::::::::::
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.send), label: 'Messages'),

        //       //  Connexion ::::::::::::::::::::::
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.people), label: 'Connexion'),

        //       //   Inscription::::::::::::::::::::::
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.add), label: 'Inscription'),
        //     ]),
      ),
    );
  }
}
