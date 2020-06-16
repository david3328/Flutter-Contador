import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{

  final TextStyle estiloTexto = TextStyle(fontSize: 25.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks:', style: estiloTexto),
            Text('0',style: estiloTexto)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Color(1025),
        onPressed: (){
          print('Hola mundo');
        },
        child: Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}