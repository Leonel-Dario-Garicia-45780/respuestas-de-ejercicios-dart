import 'package:flutter/material.dart';
import 'package:flutter_application_1/3/informacion/informacion_epecialistas.dart';

class RenderizadorEspecialistas {
  static void renderizarDatos(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Especialistas'),
          ),
          body: ListView.builder(
            itemCount: especialistas.length, // Cambia la referencia a la lista de datos
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: especialistas[index]['icono'], // Cambia la referencia a los datos
                  title: Text(especialistas[index]['nombre']), // Cambia la referencia a los datos
                  onTap: () {
                    // Aquí puedes añadir la lógica para manejar el evento onTap
                    print('Seleccionado: ${especialistas[index]['nombre']}'); // Cambia la referencia a los datos
                  },
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
