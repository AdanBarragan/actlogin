import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: const Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://imgs.search.brave.com/TJQ0K-NNrCw_k7rDqTKy_Td6IIaA_yBzmpysffNir7w/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy9i/L2JlL0l0YWx5X2xv/Y2F0aW9uX21hcC5z/dmc'),
          fit: BoxFit.cover)),
      child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Etiqueta(),
        CampoUser(),
        CampoPass(),
        BotonEntrar(),
        ],),
    );
  }
}
Widget Etiqueta(){
  return Container(child: Center(child: Text('Sing in',style: TextStyle(fontSize: 35.0,color: Colors.black),),),);
}
Widget CampoUser(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
    child: 
  TextField(
    decoration: InputDecoration(
      hintText: 'User',
      fillColor: Colors.white,
      filled:true),));
}
Widget CampoPass(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
    child: 
  TextField(
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'Password',
      fillColor: Colors.white,
      filled:true),));
}
Widget BotonEntrar(){
  return ElevatedButton(onPressed: (){},
   child: Text('  Intro Now  ',
   style: TextStyle(
    fontSize: 30.0,
    color: Colors.blue)
    ),
    );
}