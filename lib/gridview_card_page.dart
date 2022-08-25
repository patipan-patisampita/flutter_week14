import 'package:flutter/material.dart';

class GridViewCardPage extends StatelessWidget {
  const GridViewCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Menu"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(6, (index) {
            return Card(
              color: Colors.orangeAccent,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 65, color: Colors.white),
                    Text("Menu-1", style: TextStyle(color: Colors.white)),
                  ],
                ),
                onTap: () {},
              ),
            );
          }),
        ),
      ),
    );
  }
}
