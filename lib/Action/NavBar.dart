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

            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text('Manage Address'),
              onTap: () => print("Setting Your Profile"),
            ),

            ListTile(
              leading: Icon(Icons.add_location_alt_outlined),
              title: Text('My Order'),
              onTap: () => print("Check Your Payment Method"),
            ),

            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('My Favorite'),
              onTap: () => print("Check Favorite"),
            ),

            ListTile(
              leading: Icon(Icons.history_edu),
              title: Text('Order History'),
              onTap: () => print("Your Previous Order History"),
            ),

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