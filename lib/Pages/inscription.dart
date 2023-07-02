import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formkey = GlobalKey<FormState>(); // 1 Vérification champs ::::

  // 1:::RECUPERATION DES CHAMPS CONTROLLER:::::::::
  final nomController = TextEditingController();
  final prenomController = TextEditingController();
  String selectSexe = 'Homme'; // Par défaut c'est homme
  DateTime selectDate = DateTime.now(); // Par défaut date du jour

  // POUR LIBERER UN LA MOMOIRE DU STOCKAGE::::
  @override
  void dispose() {
    super.dispose();
    nomController.dispose();
    prenomController.dispose();
    // selectSexe.dispose();
    // selectDate.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20), //

      child: Form(
          // 2 Vérification champs::::
          key: _formkey,
          child: Column(
            children: [
              // CHAMPS NOM::::::::::::::::
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nom',
                    hintText: "Entrez votre nom",
                    border: OutlineInputBorder(),
                  ),
                  // VERIFICATION SI LE CHAMPS EST VIDE::::
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Le nom est vide";
                    }
                    return null;
                  },
                  // 2:::RECUPERATION DES CHAMPS CONTROLLER(Appel Controller):::::::::
                  controller: nomController,
                ),
              ),

              // CHAMPS PRENOM:::::::::::::::
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Prenom',
                    hintText: "Entrez votre prenom",
                    border: OutlineInputBorder(),
                  ),
                  // VERIFICATION SI LE CHAMPS EST VIDE::::
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Le prenom est vide";
                    }
                    return null;
                  },
                  // 2:::RECUPERATION DES CHAMPS CONTROLLER(Appel Controller):::::::::
                  controller: prenomController,
                ),
              ),

              // CHAMPS SEXE::::::::::::::
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(
                        value: 'Homme',
                        child: Text("Homme plus"),
                      ),
                      DropdownMenuItem(
                        value: 'Femme',
                        child: Text("Femme plus"),
                      ),
                      DropdownMenuItem(
                        value: 'Autres',
                        child: Text("Autres plus"),
                      ),
                    ],
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    value: selectSexe, // Valeur par défaut:::::::::

                    onChanged: (value) {
                      // 2:::RECUPERATION ET MISE A JOURS SEXE(Appel Controller):::::::::
                      setState(() {
                        selectSexe = value!;
                      });
                    }),
              ),

              // CHAMPS DATE:::::::::
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: DateTimeFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: 'Choisir une date',
                  ),
                  mode: DateTimeFieldPickerMode.dateAndTime,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (e) =>
                      (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                  onDateSelected: (DateTime value) {
                    // 2:::RECUPERATION ET MISE A JOURS SEXE(Appel Controller):::::::::
                    setState(() {
                      selectDate = value;
                    });
                  },
                ),
              ),

              // BUTTON ENVOYER:::::::::::
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Quand on clique sur button Envoyer
                    //Sa affiche (Envoi en cours...)
                    if (_formkey.currentState!.validate()) {
                      final confNom = nomController.text; //Appel controller nom
                      final confPrenom =
                          prenomController.text; //Appel controller prenom
                      // final sexeselect = selectSexe.length;
                      // final dateselect = selectDate.day;

                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Envoi en cours...")));
                      // print("Nom $confNom Prenom $confPrenom sexe $selectSexe Date $selectDate"); // Afficher champs à la console
                    }
                    // Fermer le clavier si on clique sur button
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Text("Envoyer"),
                ),
              )
            ],
          )),
    );
  }
}
