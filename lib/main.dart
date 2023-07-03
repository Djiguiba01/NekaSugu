import 'package:flutter/material.dart';
import 'Pages/Accueil.dart';
import 'Pages/connexion.dart';
import 'Pages/inscription.dart';
import 'Pages/messages.dart';

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //ENTETE CONTENUES DES DIFFERENTES PAGES
          title: [
            Text("Message"),
            Text("Accueil"),
            Text("Connexion"),
            Text("Inscription"),
          ][_currentIndex],
        ),

        // body: Accueil(),
        body: [
          Message(),
          Accueil(),
          Connexion(),
          Inscription(),
        ][_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
            // Appel Méthode de sauvegade {setCurrentIndex}
            currentIndex: _currentIndex,
            onTap: (index) => setCurrentIndex(index), //1:::::::
            // type: BottomNavigationBarType.fixed, //2::::::::

            // Couleur Elément (menu) selectionné
            selectedItemColor: Colors.teal,
            // Couleur Elément(menu) non selectionné
            unselectedItemColor: Colors.grey,
            //
            iconSize: 32,
            // elevation: 30,
            items: const [
              // Accueil ::::::::::::::::
              BottomNavigationBarItem(
                  icon: Icon(Icons.send), label: 'Messages'),

              // Accueil ::::::::::::::::
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),

              //  Connexion ::::::::::::::::::::::
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: 'Connexion'),

              //   Inscription::::::::::::::::::::::
              BottomNavigationBarItem(
                  icon: Icon(Icons.add), label: 'Inscription'),
            ]),
      ),
    );
  }
}
