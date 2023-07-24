import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nekasugu/Pages/Accueil.dart';

class connexionPage2 extends StatefulWidget {
  const connexionPage2({super.key});

  @override
  State<connexionPage2> createState() => _connexionPage2State();
}

class _connexionPage2State extends State<connexionPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50,),
          Image.asset("assets/images/logo2.png",
          height: 150,
          ),
          // ::::::::::CHAMPS NOM:::::::::::::
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF6F6F6),
                // borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(100, 150, 150, 150),
                    blurRadius: 10,
                    blurStyle: BlurStyle.solid,
                  ),
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText:  "Nom",
                    hintStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 25,), // ESPACEMENT::::::
          // :::::::::CHAMPS MOT DE PASSE:::::::::
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF6F6F6),
                // borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(100, 150, 150, 150),
                    blurRadius: 10,
                    blurStyle: BlurStyle.solid,
                  ),
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText:  "Mot de passe",
                    hintStyle: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),

// :::::MOT DE PASSE OUBLIE::::::
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(onTap: (){}, child: const Text("Mot de passe oublié?",
              style: TextStyle(color: Colors.black,fontSize: 18),),),
            ),
          ),
          // :::::::BUTTON:::::::::
          MaterialButton(
            color: const Color(0xFF323232),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
            onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder:(context)=>Accueil(),),);

            } , child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 15),
              child: const Text("Connexion", style: TextStyle(
              color: Colors.white,
              fontSize: 16,
                      ),),
            ),),

          SizedBox(height: 20,), // ESPACEMENT::::::

            // :::::::::PAS COMPTE:::::::::
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Vous n'avez pas de compte,",
                style: TextStyle(color: Color(0xFF969696),),),

                Text("créer compte",
                style: TextStyle(color: Colors.blue,
                fontWeight: FontWeight.w400),),

                
              ],
            ),

SizedBox(height: 20,),
// :::::::CONNEXION AUTRES:::::::
Text('Autres',style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
SizedBox(height: 20,),
// ::::::
Row(mainAxisAlignment: MainAxisAlignment.center,
children: [
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(onTap: (){}, child: Image.asset("assets/images/google.png")),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(onTap: (){}, child: Image.asset("assets/images/facebook.png")),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(onTap: (){},child: Image.asset("assets/images/google.png")),
  ),
],)
        ],
      ),),
    );
  }
}