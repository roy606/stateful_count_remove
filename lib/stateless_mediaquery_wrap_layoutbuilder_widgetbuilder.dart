import 'package:flutter/material.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Songit"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          height: screenheight, // height: screenheight * 0.8,
          width: screenWidth, // width: screenWidth * 0.5,
          decoration: BoxDecoration(color: Colors.cyanAccent),
          child: Center(
            child: Text(
              "Songit Bhai",
              style: TextStyle(
                  fontSize:screenWidth * 0.09,        //fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}


class WrapExample extends StatelessWidget {
  //const WrapExample({super.key});
  final List<String> categories= [
    'Fruits','Vegetable',"Dairy", "Fish","Bakery","Snacks", "Drinks", " Frozen"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WarpExample",style: TextStyle(fontWeight: FontWeight.bold),),
      ),

      body: Column(
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,

            children: categories.map((category){
              return Chip(label: Text(category),
                backgroundColor: Colors.blueAccent.shade100,
              );
            }).toList()

          )
        ],
      ),
    );
  }
}


class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder"),
      ),

      body: LayoutBuilder(
        builder:(context,con){
          
          if(con.maxWidth > 600){
            return Center(
              child: Text("This is tablet layout",style: TextStyle(color: Colors.cyanAccent),),
            );
          }
          else{
            return Center(
              child: Text("This is mobile layout",style: TextStyle(color: Colors.redAccent),),
            );
          }


        },
      ),

    );
  }
}


