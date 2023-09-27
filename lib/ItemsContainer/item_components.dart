import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsComp extends StatelessWidget {
  final String itemName;
  final String imageIcon;
  const ItemsComp({super.key, required this.itemName,required this.imageIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.blue.shade100,
      ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              imageIcon ,
              fit: BoxFit.contain,
              width: 50,
              height: 50,
            ),
            SizedBox(
              height: 10,
            ),
             Text(itemName, style: TextStyle(fontSize:15, fontWeight: FontWeight.w900, color:Colors.black54, fontFamily:"Skranji" ),)
          ],
        ),

      ),
    );
  }
}
