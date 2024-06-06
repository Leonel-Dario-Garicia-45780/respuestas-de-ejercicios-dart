import 'package:flutter/material.dart';
import 'package:flutter_application_1/3/informacion/informacion_pacientes.dart';

class RenderizadorPacientes {
  static void renderizarDatos(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Pacientes'),
          ),
          body: ListView.builder(
            itemCount: pacientes.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: pacientes[index]['icono'],
                  title: Text(pacientes[index]['nombre']),
                  onTap: () {
                    print('Seleccionado: ${pacientes[index]['nombre']}');
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
