import 'package:flutter/material.dart';
import 'package:flutter_application_1/3/informacion/informacion_terapias.dart';

class RenderizadorTerapias {
  static void renderizarDatos(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Terapias'),
          ),
          body: ListView.builder(
            itemCount: terapias.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: terapias[index]['icono'],
                  title: Text(terapias[index]['nombre']),
                  onTap: () {
                    print('Seleccionado: ${terapias[index]['nombre']}');
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
