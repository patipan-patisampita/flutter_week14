import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ประวัติส่วนตัว"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("นายมาร์ค ซัคคาเบิร์ก"),
            Text("จบ ม.3:xxxx"),
            Text("งานอดิเรก:xxxx"),
          ],
        ),
      ),
    );
  }
}
