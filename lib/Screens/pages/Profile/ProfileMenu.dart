import 'package:flutter/material.dart';
class MyProfilePage extends StatefulWidget{
  MyProfilePage({Key? key}) : super(key: key);
  @override
  ProfilePage createState() => ProfilePage();
}

class ProfilePage extends State<MyProfilePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: Color(0xFF8D4421),
      ),
    );
  }

}

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text('Khalid@gmail.com'),
            accountName: Text('Khalid Al Ajlan'),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorite'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Orders'),
          )
        ]
      ),
    );
  }

}
