import 'package:flutter/material.dart';

class FormularioInicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Inicio de Sesión', style: TextStyle(fontSize: 20.0)),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(labelText: 'Correo electrónico'),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(labelText: 'Contraseña'),
            obscureText: true,
          ),
          SizedBox(height: 20.0),
          ElevatedButton( // Cambiamos RaisedButton por ElevatedButton
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () {},
            child: Text('Iniciar Sesión'),
          ),
        ],
      ),
    );
  }
}






/* import 'package:flutter/material.dart';

class FormularioInicioSesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Inicio de Sesión', style: TextStyle(fontSize: 20.0)),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: InputDecoration(labelText: 'Correo electrónico'),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(labelText: 'Contraseña'),
            obscureText: true,
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            color: Theme.of(context).primaryColor, // Color verde como fondo
            textColor: Colors.white, // Color blanco para el texto
            onPressed: () {},
            child: Text('Iniciar Sesión'),
          ),
        ],
      ),
    );
  }
}
 */