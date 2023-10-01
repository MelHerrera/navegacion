import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegacion/models/usuario.dart';

class mySegundaPantalla extends StatelessWidget {
  mySegundaPantalla({super.key,required Usuario this.usuario});

  Usuario usuario;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title:const Text("Segunda Pantalla")
      ),
      body: Column(
        children: [
          Text("Hola ${usuario.nombre} ${usuario.apellido}"),
          ElevatedButton(
            onPressed: ()=>{ 
              Navigator.pop(context)
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home),
                Text("Devolver")
              ],
            ),
          )
        ],
      ),
    );
  }
}
