import 'package:flutter/material.dart';

void main() => runApp(Runtown());

class Runtown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Runtown',
      theme: ThemeData(fontFamily: 'Roboto'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
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
          ),
        Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('RunTown', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600,color: Colors.grey[800]))
          )
        ],),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(padding: const EdgeInsets.only(top:50.0, left: 20.0, bottom: 10.0, right: 20.0),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.blue[400], borderRadius: BorderRadius.circular(10.0)),
                child: Text('Sign In', style: TextStyle(fontSize: 15.0, color: Colors.white)),
                ),
              ),
            ),  
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(padding: const EdgeInsets.only( left: 20.0, bottom: 10.0, right: 20.0),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.green[400], borderRadius: BorderRadius.circular(10.0)),
                child: Text('Create an Account', style: TextStyle(fontSize: 15.0, color: Colors.white)),
                ),
              ),
            ),  
          ],
        ),
        ],
      ),
      ),
    );
  }
}