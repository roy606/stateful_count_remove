import 'package:flutter/material.dart';



/*
class Home extends StatelessWidget  {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    final formkey = GlobalKey<FormState>();

    List icons = [
      Icons.home,
      Icons.person,
      Icons.settings,
      Icons.phone,
      Icons.email,
      Icons.camera,
      Icons.star,
    ];

    List names = [
      "Home",
      "Profile",
      "Settings",
      "Call",
      "Email",
      "Camera",
      "Favorite",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple ,
        title: const Column(
          children: [
            Text("Songit Roy", style: TextStyle(
                fontSize: 30,
                color: Colors.white
            ),),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email",
                          label: Text("Email")
                      ),
                      validator: (value){
                        if(value==null || value.isEmpty){
                          return "Empty email not allow";
                        }
                        return null;
                      },

                    ),
                    const SizedBox(height: 20,), // for space create
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password",
                          label: Text("Password")
                      ),

                      validator: (value){
                        if(value==null || value.isEmpty || value.length<6){
                          return "Password at least 6 ";
                        }
                        return null;
                      },

                    ),

                    const SizedBox(height: 20,),


                    ElevatedButton(onPressed: (){
                      if(formkey.currentState!.validate()){
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>UserInfo()));

                        Navigator.push( context, MaterialPageRoute(builder: (context)=>const UserInfo(name: "Songit")),
                        ).then((value){
                          emailController.clear();
                          passwordController.clear();

                        });


                        //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>UserInfo()));  //back er option ta ar dibe na default vabe..

                      }

                    },
                      style:ElevatedButton.styleFrom(backgroundColor:Colors.green), child: const Text("Submit", style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),), ),
                  ],
                ),
              )),



          SizedBox(
              height: 200,
              width: 400,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10
                  ),
                  itemCount: icons.length,




                  itemBuilder: (context,index){            //er vitoreo grid view itembuilder  ase but box er vitore icon ar baire text  ase.
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        // 🔴 Box (only icon inside)
                        Container(
                          height: 60,
                          //width: 90,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)
                          ),

                          child: Center(
                            child: Icon(
                              icons[index],
                              color: Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(height: 2),

                        // 🔵 Name (outside box)
                        Text(
                          names[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),

                      ],
                    );
                  }





              )


          )





        ],

      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        print("Floating action button pressed");
      },label: const Icon(Icons.camera),),
    );




  }
}

 */

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _count=0;
  incrementCounter(){
    setState(() {
      _count++; // _count=_count+1
    });
    print('Increment: $_count');
  }

  decrementCount (){
    setState(() {
      _count--;
    });
    print('Decrement: $_count');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(_count.toString(),style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.greenAccent),),
      ),
      
      //floatingActionButton: FloatingActionButton(onPressed:  incrementCounter,child: Icon(Icons.add,size: 20,),),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

              FloatingActionButton(onPressed: incrementCounter,child: Icon(Icons.add,size: 40,),),

              SizedBox(height: 10,
              width: 10, ),

              FloatingActionButton(onPressed: decrementCount,child: Icon(Icons.remove,size: 40,),),


        ],
      ),


    );
  }
}



