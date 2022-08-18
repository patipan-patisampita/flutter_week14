import 'package:flutter/material.dart';

class ListViewMenu extends StatelessWidget {
  const ListViewMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Menu"),
      ),
      body: Container(
        child: ListView.separated(
          padding: EdgeInsets.all(8.0),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Divider(color: Colors.red);
          },
          separatorBuilder: (context, index) {
            return ListTile(
              title: Text("MENU-1"),
              subtitle: Text("Sub-1"),
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                debugPrint("MENU-1");
              },
            );
          },
        ),
      ),
    );
  }
}
