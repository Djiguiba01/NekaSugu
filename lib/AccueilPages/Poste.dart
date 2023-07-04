import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Poste extends StatefulWidget {
  const Poste({super.key});

  @override
  State<Poste> createState() => _PosteState();
}

class _PosteState extends State<Poste> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            // Création Boucle Prendre 15 Card:::::::
            for (int i = 0; i < 2; i++)
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    // Bordure ::::::::
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  // ::::::::
                  child: Row(
                    children: [
                      // Insertion Image::::::::
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "PosteDetail");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/images/nana.jpg",
                            width: 120,
                            height: 150,
                          ),
                        ),
                      ),
                      // Text:::::::::::
                      Container(
                        width: 190,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Titre :::::::::::::
                            Text(
                              "Nana",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            // Description:::::::::
                            Text(
                              "Eleve de l'école Benkan",
                              style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                            //  Les Etoiles en Bas::::::::::
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (index) {},
                            ),

                            // :::::::::::::::
                            Text(
                              "\$10",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ::::::::::::
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Prix Icon:::::::::::::::
                            Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 26,
                            ),
                            // Paniern Icon::::::::::::::
                            Icon(
                              CupertinoIcons.cart,
                              color: Colors.red,
                              size: 26,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
