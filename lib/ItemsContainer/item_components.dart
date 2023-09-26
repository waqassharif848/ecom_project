import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsComp extends StatelessWidget {
  final String itemName;
  final IconData ItemIcon;
  const ItemsComp({super.key, required this.itemName,required this.ItemIcon});

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
            IconButton(onPressed: ()=> {}, icon: Icon(ItemIcon),
              color: Colors.grey.shade500,
              iconSize: 37,
            ),
            Text(itemName, style: TextStyle(fontSize:15, fontWeight: FontWeight.w900, color:Colors.grey.shade500, ),)
          ],
        ),

      ),
    );
  }
}
