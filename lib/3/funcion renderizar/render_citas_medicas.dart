import 'package:flutter/material.dart';
import 'package:flutter_application_1/3/informacion/informacion_citas_medicas.dart';

class RenderizadorCitasMedicas {
  static void renderizarDatos(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Citas Médicas'),
          ),
          body: ListView.builder(
            itemCount: opcionesCitasMedicas.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  leading: opcionesCitasMedicas[index]['icono'],
                  title: Text(opcionesCitasMedicas[index]['nombre']),
                  onTap: () {
                    // Aquí puedes añadir la lógica para manejar el evento onTap
                    print('Seleccionado: ${opcionesCitasMedicas[index]['nombre']}');
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
