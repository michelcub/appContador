import 'package:flutter/material.dart';



class ContadorPage extends StatefulWidget {  
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int _conteo;
  final _estiloTexto = TextStyle( fontSize: 25 );

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
          children: <Widget>[Text('Numero de clicks: ', style: _estiloTexto),
          Text('$_conteo', style: _estiloTexto),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
    );
  }
  Widget _crearBotones(){
  return Row( //para colocar uno al lado del otro
    children: <Widget>[
      SizedBox(width: 30),
      FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset),
      Expanded(child: SizedBox()),
      FloatingActionButton( child: Icon(Icons.remove), onPressed: _restar),
      SizedBox(width: 5.0),//cambiar ancho del box
      FloatingActionButton( child: Icon(Icons.add), onPressed: _suma),
    ],
  );
}


void _suma(){
  _conteo++ ;
  setState((){});
}
void _restar(){
  _conteo-- ;
  setState((){});
}
void _reset(){
  _conteo = 0;
  setState(() {});
}
}


