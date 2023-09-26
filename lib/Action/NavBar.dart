import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
          children: [
          UserAccountsDrawerHeader(
              accountName: Text('Capricorn7860'),
              accountEmail: Text('waqassharif0302@gmail.com'),
              currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('Assets/ab.jpg'),),
          ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              image: DecorationImage(image: AssetImage('Assets/abcde.jpg'), fit: BoxFit.cover)
            ),
          ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Account Setting'),
              onTap: () => print("Setting Your Profile"),
            ),

            // ListTile(
            //   leading: Icon(Icons.checklist_outlined),
            //   title: Text('Check Order'),
            //   onTap: () => print("Setting Your Profile"),
            // ),

            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Check Favorite'),
              onTap: () => print("Check Favorite"),
            ),

            ListTile(
              leading: Icon(Icons.history_edu),
              title: Text('Order History'),
              onTap: () => print("Your Previous Order History"),
            ),

            ListTile(
              leading: Icon(Icons.payments_outlined),
              title: Text('Payment Methods'),
              onTap: () => print("Check Your Payment Method"),
            ),

            // ListTile(
            //   leading: Icon(Icons.add_to_photos_rounded),
            //   title: Text('Add Products'),
            //   onTap: () => print("Add new Products"),
            // ),

            ListTile(
              // leading: Icon(Icons.signout),
              title: ElevatedButton(
                  onPressed: () {
                  Navigator.pushNamed(context,'login');
                    },
                child: Text('Signout', style: TextStyle(fontWeight: FontWeight.bold),),
              ),),

        ],
      ),
    );
  }
}