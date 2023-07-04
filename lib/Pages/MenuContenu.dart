import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekasugu/Pages/Accueil.dart';

class MenuContenu extends StatefulWidget {
  const MenuContenu({super.key});

  @override
  State<MenuContenu> createState() => _MenuContenuState();
}

class _MenuContenuState extends State<MenuContenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // Etête::::::::::::::::::
            padding: EdgeInsets.zero, // Remplir entête
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text(
                "Devéloppeur full-stack",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "djiguibabarema@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              // Image::::::::::::::
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/djiguiba.jpg"),
              ),
            ),
          ),

          // Liste Menu::::::::::::::
          // Icon::::
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            // Text:::::
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              
            ),
            
          ),
          

          // 2222::::::::::::::::::::
          // Icon::::
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.red,
            ),
            // Text:::::
            title: Text(
              "Profil",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // 333::::::::::::::
          // Icon::::
          ListTile(
            leading: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.red,
            ),
            // Text:::::
            title: Text(
              "Panier",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Paramètre::::::::::::
          // Icon::::
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.red,
            ),
            // Text:::::
            title: Text(
              "Paramètre",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Deconnexion::::::::::::::
          // Icon::::
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            // Text:::::
            title: Text(
              "Déconnexion",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
