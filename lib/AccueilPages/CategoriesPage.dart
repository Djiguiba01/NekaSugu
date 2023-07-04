import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      // 11111111111:::::::::
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            // Création Boucle Prendre 15 Card:::::::
            for (int i = 0; i < 15; i++)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),

                // ::::::::::::::::
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),

                  // :::::::::::::
                  child: Image.asset(
                    "assets/images/djiguiba.jpg",
                    width: 50,
                    height: 50,
                  ),
                ),
              )
          ],
        ),
      ),

      // 2222::::::::::::::::::
    );
  }
}
