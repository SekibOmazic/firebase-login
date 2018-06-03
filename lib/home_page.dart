import 'package:flutter/material.dart';
import 'auth.dart';

class HomePage extends StatelessWidget {
  final BaseAuth auth;
  final VoidCallback onSignedOut;

  HomePage({this.auth, this.onSignedOut});

  void _signOut() async {
    try {
      await auth.signOut();
      onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        actions: <Widget>[
          FlatButton(
            child: Text('Logout', style: TextStyle(fontSize: 17.0, color: Colors.white),),
            onPressed: _signOut,
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Text(
            'Welcome',
            style: TextStyle(fontSize: 32.0),
          ),
        ),
      ),
    );
  }
}
