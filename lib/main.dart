import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beranda Flutter',
      home: Scaffold(
        body: Beranda(),
      ),
    );
  }
}

class Beranda extends StatefulWidget {
  @override
  createState() {
    return _BerandaState();
  }
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Belajar Flutter by Farid')
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              namaField(),
              emailField(),
              passwordField(),
              registerButton()
            ],
          )
        ),
      )
    );
  }
}

Widget namaField(){
  //Membuat Text Input
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Nama Lengkap', //Dgn Label nama lengkap
      contentPadding: EdgeInsets.all(10.0)
    ),

  );
}

Widget emailField(){
  return TextFormField(
    keyboardType: TextInputType.emailAddress,//Keyboard Type adalah Email Address
    decoration: InputDecoration(
      labelText: 'Email',
      hintText: 'email@example.com',
      contentPadding: EdgeInsets.all(10.0)
    ),
  );
}

Widget passwordField(){
  return TextFormField(
    obscureText: true,//ketika bernilai true, maka = type password di html
    decoration: InputDecoration(
      labelText: 'Password',
      hintText: 'Type Password',
      contentPadding: EdgeInsets.all(10.0),

    ),
  );
}

Widget registerButton(){
  return Padding(
      padding: EdgeInsets.all(10.0),
      child:   RaisedButton(
        color: Colors.blueAccent,
        onPressed: (){

        },
        child: Text('Daftar')
      )
  );
}