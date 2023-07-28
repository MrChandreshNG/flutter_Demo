import 'package:flutter/material.dart';
import 'package:login/main.dart';

class SignInPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.brown,
          body: Column(
            children: [
              Container(
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context) {return Login();},));
                  },
                  child: Text('Signin'),
                ),
              ),
            ],
          ),
    );
  }

}