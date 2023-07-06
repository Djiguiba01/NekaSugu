import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nekasugu/Pages/inscriptionPage.dart';

class ConnexionPage extends StatelessWidget {
  const ConnexionPage({super.key});

  @override
  Widget build(BuildContext context) {
    // (1/1)La liste des images De Connection avec réseaux sociaux::::
    List imagesList = [
      "papa.jpg",
      "nana.jpg",
      "seydou.jpg",
    ];

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
            height: h * 0.3, // Position Image:::::::
            decoration: BoxDecoration(
              // Image::::::::
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/4.jpg",
                ),
                fit: BoxFit.cover, //Remplir image Droite et Gauche
              ),
            ),
            // // LOGO IMAGE::::::::::::
            child: Column(
              children: [
                SizedBox(height: h * 0.11), // Position Logo:::::::
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/logo2.png"),
                )
              ],
            ),
          ),

          //  Text et Champs de Saisi Container ::::::::::::::::::::::
          Container(
            // Text:::::::::::::::::::::::::::
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //
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
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.deepOrangeAccent,
                      ),
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
                      hintText: "Mot de passe",
                      prefixIcon: Icon(
                        Icons.key,
                        color: Colors.deepOrangeAccent,
                      ),
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

                // // BUTTON CONNEXION::::::::::::
                SizedBox(
                  height: 20,
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
                        "Connexion",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                // Creation D'un compte:::::::::::::
                SizedBox(
                  height: (w * 0.10),
                ), // Espacement en haut

                // ::::::
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Vous n\'avez pas de compte?",
                      style: TextStyle(color: Colors.grey[500], fontSize: 16),

                      // Rédirection::::::::::
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => inscriptionPage()),

                      // children: [
                      //   TextSpan(
                      //     text: "Créer",
                      //     style: TextStyle(
                      //       color: Colors.black,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // ]
                    ),
                  ),
                ),

                // // (2/2)Connection avec réseaux sociaux::::
                // Wrap(
                //   children: List<Widget>.generate(3, (index) {
                //     return Padding(
                //       padding: const EdgeInsets.all(10.0),
                //       child: CircleAvatar(
                //         radius: 20,
                //         backgroundColor: Colors.grey[500],
                //         child: CircleAvatar(
                //           radius: 15,
                //           backgroundImage:
                //               AssetImage("assets/images/" + imagesList[index]),
                //         ),
                //       ),
                //     );
                //   }),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
