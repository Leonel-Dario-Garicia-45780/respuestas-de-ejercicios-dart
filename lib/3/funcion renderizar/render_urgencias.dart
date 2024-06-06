import 'package:flutter/material.dart';
import 'package:flutter_application_1/3/informacion/informacion_urgencias.dart';

class RenderizadorUrgencias {
  static void renderizarDatos(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Urgencias'),
          ),
          body: ListView.builder(
            itemCount: urgencias.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: urgencias[index]['icono'],
                  title: Text(urgencias[index]['nombre']),
                  onTap: () {
                    print('Seleccionado: ${urgencias[index]['nombre']}');
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
