import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nekasugu/Pages/connexionPage.dart';

class inscriptionPage extends StatefulWidget {
  const inscriptionPage({super.key});

  @override
  State<inscriptionPage> createState() => _inscriptionPageState();
}

class _inscriptionPageState extends State<inscriptionPage> {
  @override
  Widget build(BuildContext context) {
    // Prendre la taille de l'écran width et Height
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Image Container ::::::::::::::::::::::
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
              // Image::::::::
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/logo2.png",
                ),
                fit: BoxFit.cover, //Remplir image Droite et Gauche
              ),
            ),
            // // LOGO IMAGE::::::::::::
            // child: Column(
            //   children: [
            //     SizedBox(height: h*0.16),
            //     CircleAvatar(
            //       backgroundColor: Colors.white70,
            //       radius: 60,
            //       backgroundImage: AssetImage("assets/images/logo2.png"),
            //     )
            //   ],
            // ),
          ),
          //  Text et Champs de Saisi Container ::::::::::::::::::::::
          Container(
            // Text:::::::::::::::::::::::::::
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "NekaSugu",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "inscriptionPage",
                  style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                ),
                // Champs:::::::::::::::::::
                SizedBox(
                  height: 50,
                ), // Espacement en haut

                // 1 CHAMPS 111111111111::::::::::::::::::::::::::
                Container(
                  // BoxShadow Sur les Champs::::::::
                  decoration: BoxDecoration(
                      color:
                          Colors.white, // Couleur à l'intérieur du champs::::
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ]),

                  child: TextField(
                    decoration: InputDecoration(
                      // Couleur Bordure:::::::::::
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),

                      // Visibilité des Textes Saisi dans le Champs:::::::::
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),

                      // Raduis Boerdure::::::::::
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                // 2 CHAMPS 2222222:::::::::::::::::
                SizedBox(
                  height: 20,
                ), // Espacement entre 1 et 2

                Container(
                  // BoxShadow Sur les Champs::::::::
                  decoration: BoxDecoration(
                      color:
                          Colors.white, // Couleur à l'intérieur du champs::::
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.3),
                        ),
                      ]),

                  child: TextField(
                    decoration: InputDecoration(
                      // Couleur Bordure:::::::::::
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),

                      // Visibilité des Textes Saisi dans le Champs:::::::::
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),

                      // Raduis Boerdure::::::::::
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ), // Espacement en haut

                // Mot de Passe Oublié::::::::
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text(
                      "J'ai déjà un compte",
                      style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                    ),
                    Text(
                      "Connecter",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ],
                ),

                // // BUTTON CONNEXION::::::::::::
                SizedBox(
                  height: 2,
                ), // Espacement en haut
                Center(
                  child: Container(
                    width: w * 0.5,
                    height: h * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      // Image::::::::
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/guindo.jpg",
                        ),
                        fit: BoxFit.cover, //Remplir image Droite et Gauche
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "S'inscrire",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                // // BUTTON CONNEXION::::::::::::
                // SizedBox(
                //   height: 70,
                // ), // Espacement en haut
                // Container(
                //   width: w * 0.5,
                //   height: h * 0.08,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(30),
                //     // Image::::::::
                //     image: DecorationImage(
                //       image: AssetImage(
                //         "assets/images/logo2.png",
                //       ),
                //       fit: BoxFit.cover, //Remplir image Droite et Gauche
                //     ),
                //   ),
                //   child: Center(
                //     child: Text(
                //       "Connexion",
                //       style: TextStyle(
                //         fontSize: 36,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),

                // Creation D'un compte:::::::::::::
                SizedBox(
                  height: (w * 0.02),
                ), // Espacement en haut

                // ::::::
                // RichText(
                //   text: TextSpan(
                //       text: "Vous n\'avez pas de compte?",
                //       style: TextStyle(color: Colors.grey[500], fontSize: 20),
                //       children: [
                //         TextSpan(
                //           text: "Créer",
                //           style: TextStyle(
                //             color: Colors.black,
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //       ]),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
