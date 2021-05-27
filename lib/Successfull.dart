import 'package:flutter/material.dart';

class Successfull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/checklist.png"),
            Text("Your profile has been saved",style: TextStyle(fontSize: 30,),),
            Text("Successfully",style: TextStyle(fontSize: 30,)),
            SizedBox(height: 30,),
            Container(
                     child: Center(
                       child: Text("Let's Start",style: TextStyle(fontSize: 20),),
                     ),
                     height: MediaQuery.of(context).size.height/15,
                     width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(15),
                       color: Colors.grey
                     ),
                   ),
          ],
        ),
      ),      
    );
  }
}