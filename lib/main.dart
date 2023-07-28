import 'package:flutter/material.dart';
import 'package:login/signin_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  child:CircleAvatar(backgroundImage: AssetImage("assets/img.jpg")),
                ),
                Center(
                    child: Text('Login',
                        style: TextStyle(fontSize: 48,)
                    )
                ),
                TextFormField(
                  validator: (value) {
                    print('Validation :- ${value}');
                    if(value?.length != 10){
                      return 'Enter Valid Number';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.black12,
                    filled: true,
                    labelText: 'Enter Number',
                    hintText: 'Number',
                  ),
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton(
                  onPressed: (){
                    if(_formkey.currentState!.validate()){
                      print('Done');
                    }else{
                      print('Not Done');
                    }
                  },
                  child: Text('Login'),
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {return SignInPage();},));
                  },
                  child: Text('Signin'),
                ),
              ],
            ),
          ),
        ),
    );
  }
}

