import 'package:flutter/material.dart';
import 'login.dart';
import 'logo.dart';
import 'register.dart';

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
         Logo(),
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
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
                },
                child: Container(
                alignment: Alignment.center,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.blue[400], borderRadius: BorderRadius.circular(10.0)),
                child: Text('Sign In', style: TextStyle(fontSize: 15.0, color: Colors.white)),
                ),
              )
              ),
            ),  
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(padding: const EdgeInsets.only( left: 20.0, bottom: 10.0, right: 20.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Register(),
                    ));
                  },
                child: Container(
                alignment: Alignment.center,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.green[400], borderRadius: BorderRadius.circular(10.0)),
                child: Text('Create an Account', style: TextStyle(fontSize: 15.0, color: Colors.white)),
                ),) ,
               
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