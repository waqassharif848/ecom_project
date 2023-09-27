import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BurgerList extends StatefulWidget {
  const BurgerList({super.key});

  @override
  State<BurgerList> createState() => _BurgerListState();
}

class _BurgerListState extends State<BurgerList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: ListView.builder(itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
              ],
            ),
          );
        }
        ))
      ],
    );
  }
}
