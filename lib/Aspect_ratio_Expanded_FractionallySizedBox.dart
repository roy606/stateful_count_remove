
import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aspect Ratio'),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 200,
              width: 400,
              color: Colors.red,

              child: FractionallySizedBox(
                widthFactor: 0.7,
                heightFactor: 0.7,

                child: Container(
                  color: Colors.green,
                ),
              ),
            ),

            const SizedBox(height: 20),


            Container(
              height: 200,
              width: 400,
              color: Colors.red,

              child: FractionallySizedBox(
                widthFactor: 0.7,
                heightFactor: 0.7,
                alignment: Alignment.centerRight,

                child: Container(
                  color: Colors.green,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              color: Colors.blue,

              child: AspectRatio(
                aspectRatio: 16 / 9,

                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  heightFactor: 0.7,

                  child: Container(
                    color: Colors.amber,

                    child:  Center(
                      child: Text(
                        "Songit Boss",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox( height: 10,),

            // stack use
            Center(
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Container(

                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  Container(

                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),


                  Container(

                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

                  Positioned(      //positioned use kore eder obosthan change korte pari
                                    // amra alignment use korte partam but eta kaj korbe na container nijer move kore na container vitore child ke move koray tai positioned use hoy

                    top: 10,
                    left: 10,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),




                ],
              ),

            ),

          ],
        ),
      ),
    );
  }
}