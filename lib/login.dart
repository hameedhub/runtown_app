import 'package:flutter/material.dart';
import 'package:runtown_app/register.dart';
import 'logo.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.green[400])
      ),
      body: Container(
        width: double.infinity,
        child: Column(children: <Widget>[
          Logo(),
           Row( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('RunTown', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600,color: Colors.grey[800]))
          )
        ],),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: TextField(
          decoration: InputDecoration(
            labelText: 'Email Address'
          ),
         ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: TextField(
            obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password'
          ),
         ),
        ),
         Row(
          children: <Widget>[
            Expanded(
              child: Padding(padding: const EdgeInsets.only(top:10.0, left: 20.0, bottom: 10.0, right: 10.0),
                child: Container(
                alignment: Alignment.center,
                height: 50.0,
                decoration: BoxDecoration(color: Colors.green[400], borderRadius: BorderRadius.circular(10.0)),
                child: Text('Login', style: TextStyle(fontSize: 15.0, color: Colors.white)),
                ),
              ),
            ),  
            Expanded(
              child: Padding(padding: const EdgeInsets.only(top:10.0, left: 20.0, bottom: 10.0, right: 10.0),
                child: Container(
                alignment: Alignment.center,
                child: Text('Forget password?', style: TextStyle(fontSize: 17.0, color: Colors.green[400], fontWeight: FontWeight.bold)),
                ),
              ),
            ),  
          ],
        ),
        Expanded(
         child: GestureDetector(
           onTap: (){
             Navigator.push(context, MaterialPageRoute(
               builder: (context)=> Register()
             ),
             );
           },
           child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Text('Create an Account', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red[400]),),
            )
            ],
          ))
        )
        ],),
      ),
    );
  }
}