import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekasugu/Pages/MenuContenu.dart';
import '../AccueilPages/CategoriesPage.dart';
import '../AccueilPages/Poste.dart';
import '../AccueilPages/Produits.dart';
import 'EntetePage.dart';

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

          // PARTIE PRODUITS:::::::::::::::::::::::::::::::::::
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

          // PARTIE POSTES:::::::::::::::::::::::::::::::::::
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Postes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          // Appel Page Poste:::::::::::::::
          Poste(),
        ],
      ),

      // Appel Page Poste:::::::::::::::
      drawer: MenuContenu(),

      // PARTIE BUTTON PANIER::::::::::::::::::::
      floatingActionButton: Container(
        decoration: BoxDecoration(
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
        // Action Button:::::::
        child: FloatingActionButton(
          onPressed: () {
            
           },
          child: Icon(
            CupertinoIcons.cart,
            size: 28,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
