import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CategoriesPage.dart';
import 'EntetePage.dart';
import 'Produits.dart';

class Accueil extends StatelessWidget {
  const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Appel Page EntetePage::::::
          EntetePage(),

          // PARTIE BARRE DE RECHERCHE::::::::::::::::::::
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            // :::::
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                // La Loup Icon:::::::::::::
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        // Placeholder:::::::::::::::
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Recherche...",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    // Icon Filter::::::::::::::::
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),

          // PARTIE GATEGORIES:::::::::::::::::::::::::::::::::::
          // Text::::::::::::::
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Catégories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // Appel Page CategoriesPage:::::::::::::::::
          CategoriesPage(),

          // PARTIE RRRRRRRRRAAA:::::::::::::::::::::::::::::::::::
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Produits",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          // Appel Page Produits:::::::::::::::
          Produits(),
        ],
      ),
    );
  }
}
