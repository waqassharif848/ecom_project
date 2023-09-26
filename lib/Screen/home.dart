import 'package:ecom_project/Action/NavBar.dart';
import 'package:ecom_project/ItemsContainer/item_components.dart';
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
        title: Text('Easy Mart', style: TextStyle(fontWeight: FontWeight.bold),),
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
                ItemsComp(itemName: "CUP TEA", ItemIcon: Icons.free_breakfast),
                ItemsComp(itemName: "SHIRTS", ItemIcon: Icons.free_breakfast),
                ItemsComp(itemName: "PENTS", ItemIcon: Icons.free_breakfast),
                ItemsComp(itemName: "FANS", ItemIcon: Icons.free_breakfast),
                ItemsComp(itemName: "BIKES", ItemIcon: Icons.free_breakfast),
                ItemsComp(itemName: "CARS", ItemIcon: Icons.free_breakfast),
                ItemsComp(itemName: "LAPTOP", ItemIcon: Icons.free_breakfast),
                ItemsComp(itemName: "MOBILES", ItemIcon: Icons.free_breakfast),
                ItemsComp(itemName: "HEADPHONES", ItemIcon: Icons.free_breakfast),
                ItemsComp(itemName: "CLOTHES", ItemIcon: Icons.free_breakfast),
              ],
            ),
          )
        ],
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
