import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'VaccinationTable.dart';

class VaccinationAlarmScreen extends StatelessWidget {
  final int index;

  const VaccinationAlarmScreen({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:Color(0xFF0D47A1),
          title: Text(style:TextStyle(color:Colors.white),"Vaccination Alarm")
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Based on the data you entered, it's time for this vaccination!", style: TextStyle(color: Color(0xFF0D47A1),fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text("Upcoming vaccine: BCG Vaccine (Newborn)",style: TextStyle(fontWeight: FontWeight.bold)),
            Text( style: TextStyle(color: Colors.grey),"Due Date: 2024-11-07"),
            SizedBox(height: 20),
            Text("Benefits of this vaccine:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text( style: TextStyle(color: Colors.grey),"1- Prevents Tuberculosis\n2- Essential for newborn health\n3- Helps build immunity in early life"),
            SizedBox(height: 35),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VaccinationTable()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0D47A1),
                ),
                child: Text(style: TextStyle(color: Colors.white),"Mark as Seen"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
