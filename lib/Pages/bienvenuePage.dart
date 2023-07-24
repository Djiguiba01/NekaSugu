import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nekasugu/Pages/connexionPage2.dart';

class BienvenuePage extends StatefulWidget {
  const BienvenuePage({super.key});

  @override
  State<BienvenuePage> createState() => _BienvenuePageState();
}

class _BienvenuePageState extends State<BienvenuePage> {
  // ::::::::::LES IMAGES::::::
  List images= ["assets/images/1.png", "assets/images/2.png", "assets/images/3.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
        SizedBox(height: 20,), // ESPACEMENT::::::
// ::::::::::::
CarouselSlider(
  options: CarouselOptions(height: 350.0,
  aspectRatio: 1,
  viewportFraction: 1,
  autoPlay: true),
  
  items: images.map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Image.asset(i);
      },
    );
  }).toList(),
),
Row(mainAxisAlignment: MainAxisAlignment.center,
children: images.map((e) => Container(
  width: 10,
  height: 10,
  margin: EdgeInsets.symmetric(
    vertical: 8.0,
    horizontal: 4.0,
  ),
  // :::::Decoration
  decoration: BoxDecoration(shape: BoxShape.circle,
  color: Colors.black),
)).toList(),),
// :::::::
          
           SizedBox(height: 15,), // ESPACEMENT::::::

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,),
            child: const Text("cvvvvvvv vvvvvwhh ssssssss szzzzz zzzz",
            style: TextStyle(fontSize: 24,
            fontWeight: FontWeight.w400,),
            textAlign: TextAlign.center,),
          ),
          SizedBox(height: 75,), // ESPACEMENT::::::
          MaterialButton(
            // :::::::BORDURE::::
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),),
        
            color: const Color(0xFF323232),
            onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder:(context)=>connexionPage2(),),);
            },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,
            vertical: 15),
            child: const Text(
              "Commencer",
              style: TextStyle(color: Colors.white,
              fontSize: 16,),
            ),
          ),)
        ],
      )),
    );
  }
}