import 'package:flutter/material.dart';

import 'contact.dart';
import 'gridview_card_page.dart';
import 'list_view_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _count ++;
                debugPrint("count: $_count");
              });
            },
            icon: Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {
                debugPrint("search");
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Liver Pool",style: Theme.of(context).textTheme.displaySmall),
            Text('$_count',style: Theme.of(context).textTheme.displayLarge)
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mark"),
              accountEmail: Text("mark@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('Grid View'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GridViewCardPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.api),
              title: Text('List View'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewMenuPage()));
              },
            ),
             ListTile(
              leading: Icon(Icons.api),
              title: Text('Contact'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
