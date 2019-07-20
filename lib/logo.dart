import 'package:flutter/material.dart';

class Logo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
       return           Stack(
            alignment: Alignment.center,
            children: <Widget>[
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.red[400]
              ),
              child: Icon(Icons.home, color: Colors.white,),
            ),
            Container(
              margin: EdgeInsets.only(top: 90, right: 50),
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.green[400]
              ),
              child: Icon(Icons.directions_run, color: Colors.white,),
            ),
            Container(
              margin: EdgeInsets.only(top: 90, left: 50),
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.blue[400]
              ),
              child: Icon(Icons.local_car_wash, color: Colors.white,),
            ),
          ],
          );
  }
}