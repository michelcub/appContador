
import 'package:constador/src/pages/contad_page.dart';
import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  
  @override //sobreescribir metodo build
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage(),
      )
      ,
    );
  }
}