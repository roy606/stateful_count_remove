import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:stateful_widget/widget/citywidget.dart';

class LifeCycleExample extends StatefulWidget {
  const LifeCycleExample({super.key});

  @override
  State<LifeCycleExample> createState() => _LifeCycleExampleState();
}

class _LifeCycleExampleState extends State<LifeCycleExample> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Enter Page"),
            content: const Text("Do you want to enter this page?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Okay"),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Life Cycle'),
      ),



      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ////////////// SnackBar /////////

          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white,),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("This is Snackbar"),
                      duration: Duration(seconds: 2),
                      action: SnackBarAction(label: "Undo", onPressed: (){

                      }),
                    ),);
              },
              child: Text(
                "SnackBar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),


          /////////// Bottom sheet ///////////

          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white,),
              onPressed: () {
                showModalBottomSheet(
                  //isDismissible: false,
                    context: context, builder: (context) {
                  return Column(
                    children: [
                      Center(child: Text("This is Botom sheet")),
                      Container(
                        width: 100,
                        height: 150,
                        color: Colors.red,
                      )
                    ],
                  );

                });
              },
              child: Text(
                "Bottom Sheet",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),

          //////////////// Alert dialog ////////////
          
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,foregroundColor: Colors.white,),

              onPressed: (){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text("Are you sure?"),
                content: Text("Are you sure to delete thsi?"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Cancel")),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Okay"))
                ],
                
              );
            });
            
          }, child: Text("Alert Dialog",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),

          SizedBox(height: 10.h,),

          Text("Top Cities",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10,),
                CityWidget(cityImage: 'https://i.ytimg.com/vi/Z3OmC1UGBmo/maxresdefault.jpg', cityName: 'Bangladesh', cityDescription: 'Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways.',),
                SizedBox(width: 5.w,),
                CityWidget(cityImage: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0d/d6/96/36/photo4jpg.jpg?w=1400&h=-1&s=1', cityName: 'Nepal', cityDescription: 'Nepal, officially the Federal Democratic Republic of Nepal, is a landlocked country in South Asia.',),
                SizedBox(width: 5.w,),
                CityWidget(cityImage: 'https://images.contentstack.io/v3/assets/blt06f605a34f1194ff/blt2d845dec84087f6f/67fd2a5d315fb4614d7a3761/pexels-harsha-samaranayake-303340503-13391116-Header_Mobile.jpg?fit=crop&disable=upscale&auto=webp&quality=60&crop=smart', cityName: 'Sri Lanka', cityDescription: 'Sri Lanka, officially the Democratic Socialist Republic of Sri Lanka, formerly known as Ceylon',),
                SizedBox(width: 5.w,),
                CityWidget(cityImage: 'https://media.istockphoto.com/id/483672437/photo/merlion.jpg?s=612x612&w=0&k=20&c=P_buDj2h6ydR-sVFO5nkGyTFehRVECKGvWXrdi50lVg=', cityName: 'Singapure', cityDescription: 'Singapore, officially the Republic of Singapore, is an island country and city-state in Southeast Asia.',),

              ],
            ),
          )

        ],
      ),
    );
  }
}


