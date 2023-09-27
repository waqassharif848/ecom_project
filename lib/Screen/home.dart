import 'package:food_project/Action/NavBar.dart';
import "package:food_project/ItemsContainer/items.dart";
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PIZZA GURU', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Skranji"),),
        actions: [
          IconButton(onPressed: ()=> {} , icon: Icon(Icons.add_shopping_cart)),
          IconButton(onPressed: ()=> {}, icon: Icon(Icons.more_vert))
        ],

      ),
      drawer: NavBar(),
      body: Column(
        children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Items(),
                    ],
                  ),
                ),],

      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home),
      //     label: 'Home',
      //     backgroundColor: Colors.lightGreen,
      //   ),
      //   BottomNavigationBarItem(icon: Icon(Icons.favorite),
      //       label: 'Faverite'),
      //   BottomNavigationBarItem(icon: Icon(Icons.bookmark_border_sharp),
      //       label: 'Orders')
      // ],)
      );
  }
}
