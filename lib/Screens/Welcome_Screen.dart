import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/ButtonWidget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset('',height: 150,),
             SizedBox(height: 20,),
             Text('Teffly',
              style: TextStyle(fontSize: 25,color: Color(0xFF0D47A1) ),
             ),
             SizedBox(height: 10,),
             Text('To explore and interact with all the features, please log in or sign up.',
               textAlign: TextAlign.center,
               style: TextStyle(fontSize: 15,color: Colors.black54,),
             ),
             SizedBox(height: 20,),
             CustomButton(text: 'Login', color:Color(0xFF0D47A1), onPressed: () {}),
             SizedBox(height: 10),
             CustomButton(text: 'Sign Up', color: Color(0xFF82B1FF), onPressed: () {}),



           ],
        ) ,
      ),
    );
  }
}
