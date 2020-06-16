import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState()=> _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{

  final TextStyle _estiloTexto = TextStyle(fontSize: 25.0);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps:', style: _estiloTexto),
            Text('$_conteo',style: _estiloTexto)
          ],
        )
      ),
      floatingActionButton: _crearBotones()
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(onPressed: _inicializar ,child: Icon(Icons.exposure_zero)),
        Expanded(child:SizedBox()),
        FloatingActionButton(onPressed: _disminuir,child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        FloatingActionButton(onPressed: _agregar,child: Icon(Icons.add)),
      ],
    );
  }

  void _agregar() => setState(() => _conteo++);
  void _disminuir() => {if(_conteo>0) setState(()=> _conteo--)};
  void _inicializar()=> setState(()=> _conteo=0);

}

