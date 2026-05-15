
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SizerExample extends StatelessWidget {
  const SizerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ronaldo Boss",style: TextStyle(fontWeight: FontWeight.bold),),

      ),

          body: SingleChildScrollView(
            child: Column(
                    children: [
            Image.network(
              height: 20.h,
                width: 50.w,
            
                'https://mir-s3-cdn-cf.behance.net/projects/404/48125a233701089.Y3JvcCwxMTkyLDkzMywwLDA.jpg'),
            SizedBox(height: 5,),
            
            Image.asset(
                height: 20.h,
                width: 100.w,
                'asset/love.jpg'),

                      SizedBox(height: 10,),

                      Container(
                        height: 20.h,
                        width: 70.w,
                        color: Colors.red,
                      ),

                      Text(
                        'Songit',
                        style: TextStyle(fontSize: 35.sp,color: Colors.blueAccent),

                      )
            
            
            
                  ],
                ),
          ) ,
    );
  }
}
