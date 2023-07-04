import 'package:flutter/material.dart';

class Produits extends StatefulWidget {
  const Produits({super.key});

  @override
  State<Produits> createState() => _ProduitsState();
}

class _ProduitsState extends State<Produits> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            // Création Boucle Prendre 15 Card:::::::
            for (int i = 0; i < 15; i++)

              // 1 Card ::::::::::::::::
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                // Création Card::::::::::::::::
                child: Container(
                  width: 170,
                  height: 225,
                  // Bordure Card::::::::::::::
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  // dd
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // INSERTION image et TEXTE dans Card:::::::
                      children: [
                        Container(
                          // Insertion Image:::::::::
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 4),
                          child: Image.asset("assets/images/papa.jpg"),
                          height: 130,
                        ),
                        // ENTETE Text::::::::::::::
                        Text(
                          "Djiguiba Barema",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // ::::::::
                        SizedBox(height: 4),

                        // :::::::::
                        // CORPS Text::::::::::::::
                        Text(
                          "Djiguiba Barema",
                          style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        // Voir et Prix:::::::
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$10",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 26,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
