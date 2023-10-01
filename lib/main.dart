import 'package:flutter/material.dart';
import 'package:navegacion/models/usuario.dart';
import 'package:navegacion/pages/SegundaPantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatelessWidget {
  const myHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MaterialButton(
              onPressed: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return mySegundaPantalla(usuario: Usuario("Mel", "Herrera"));
                }))
              },
              child: const Text("Ir a Segunda Pantalla"),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      )
    );
  }
}


