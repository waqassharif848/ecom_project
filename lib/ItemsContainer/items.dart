import 'package:ecom_project/ItemsContainer/item_components.dart';
import 'package:ecom_project/ProductList/burgerlist.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
          children: [
            InkWell( 
                child: ItemsComp(itemName: "BURGER", imageIcon: "Assets/burger.png"),
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> BurgerList())),
            ),
            ItemsComp(itemName: "PIZZA", imageIcon: "Assets/pizza.png"),
            ItemsComp(itemName: "SHAWARMA", imageIcon: "Assets/burrito.png"),
            ItemsComp(itemName: "CHIPS", imageIcon: "Assets/chips.png"),
            ItemsComp(itemName: "COLD DRINK", imageIcon: "Assets/coldrink.png"),
            ItemsComp(itemName: "SANDWITCH", imageIcon: "Assets/sandwich.png"),
            ItemsComp(itemName: "NUGGETS", imageIcon: "Assets/nuggets.png"),
            ItemsComp(itemName: "SPRING ROLL", imageIcon: "Assets/springroll.png"),
            ItemsComp(itemName: "TACO", imageIcon: "Assets/taco.png"),
            ItemsComp(itemName: "HOT DOG", imageIcon: "Assets/hotdog.png"),
            ItemsComp(itemName: "HOT WING", imageIcon: "Assets/hotwings.png"),
            ItemsComp(itemName: "SPAGUETTI", imageIcon: "Assets/spaguetti.png"),
            ItemsComp(itemName: "HOT DEALS", imageIcon: "Assets/deals.png"),
          ],
        ),
      ],
    );

  }
}

