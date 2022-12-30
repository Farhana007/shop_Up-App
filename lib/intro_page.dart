
import 'package:flutter/material.dart';
import 'home_page.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
             children: [

               Padding(
                 padding: const EdgeInsets.only(top: 90, left: 80, right: 80, bottom: 50),
                 child: Image.asset("images/avocado.png"),
               ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("We deliver groceries at your doorstep",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500
                    ),

                 ),
               ),
               Text("Fresh Food Everyday"),

               SizedBox(
                 height: 40,
               ),

               GestureDetector(
                 onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                   return const HomePage();
                 }),),
                 child: Container(
                   decoration: BoxDecoration(
                     color: Colors.deepPurple,
                     borderRadius: BorderRadius.circular(15)
                   ),
                   margin: EdgeInsets.only(bottom: 30),
                   padding: EdgeInsets.all(24),
                   child: Text("Get Started",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 21
                   ),),
                 ),
               )
                
               
               
               
               
               

               
               
               

             ],
          ),
        ),
      ),
    );
  }
}



