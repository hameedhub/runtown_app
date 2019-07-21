import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'login.dart';
import 'logo.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.green[400])),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Logo(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('RunTown',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[800])))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                  child: Text(
                    'Please provide the following information',
                    style: TextStyle(fontSize: 12.0, color: Colors.red[400]),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Last Name'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Email Address'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, bottom: 10.0, right: 10.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.green[400],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text('Register',
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                      },
                      child: Text('Already have an Account? Login',
                          style: TextStyle(
                              color: Colors.red[400],
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
