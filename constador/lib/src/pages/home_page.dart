import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle( fontSize:25);
  final conteo = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('Numero de clicks: ', style: estiloTexto),
          Text('$conteo', style: estiloTexto),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),//es para agregar un icono, y si queremos uno de materia escribimos dentro del parentesis Icon. y seleccionamos el icono o lo arrastramos desde la web de material
        onPressed: (){
          //AL PRESIONAR SE EJECUTA UNA FUNCION
          //conteo++;
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}