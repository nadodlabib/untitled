import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'VaccinationTable.dart';

class VaccinationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor:Color(0xFF0D47A1),
          title: Text(style:TextStyle(color:Colors.white),"Vaccination")
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Why Vaccination is Important", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color:Color(0xFF0D47A1))),
            SizedBox(height: 8),
            Text("Vaccinations are essential to protect your child from serious illnesses and infections,by following the recommended vaccination scedule you ensure your body developps immunity against various diseases at the right time."),
            SizedBox(height: 16),
            Text('Benefits of Vaccination',  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color:Color(0xFF0D47A1))),
            SizedBox(height: 20,),
            Text('Prevents dangerous diseases  '
                'Strengthens immunity Protects against  community outbreaks '),
            SizedBox(height: 20,),
            Text('Following the schedule', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color:Color(0xFF0D47A1))),
            SizedBox(height: 20,),
            Text('It’s important to follow the recommended vaccination'
              'schedule provided by health professionals'
                  '. This ensures your baby is protected at the right ages'),
            SizedBox(height: 35,),
            Center(
              child: ElevatedButton(

                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VaccinationTable()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0D47A1),
                ),
                child:
                Text( style:TextStyle(color:Colors.white),"See Vaccination Table"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
