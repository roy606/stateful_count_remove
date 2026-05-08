
import 'package:flutter/material.dart';


class UserInfo extends StatelessWidget {
  final String name;
  const UserInfo({super.key,  required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Page"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(name,style: TextStyle(fontSize: 30,color: Colors.green),),
            const Text(
              "this user page",
              style: TextStyle(fontSize: 26, color: Colors.amber),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Back"),
            ),
            ElevatedButton(
              onPressed: () {
               // Navigator.push(context,MaterialPageRoute(builder: (context)=> Page1( userName: name,)));
              },
              child: const Text("Page1"),
            ),
          ],
        ),
      ),
    );
  }
}