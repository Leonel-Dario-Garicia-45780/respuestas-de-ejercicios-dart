import 'package:flutter/material.dart';
import 'package:flutter_application_1/3/funcion%20renderizar/render_citas_medicas.dart';
import 'package:flutter_application_1/3/funcion%20renderizar/render_especialistas.dart';
import 'package:flutter_application_1/3/funcion%20renderizar/render_farmacia.dart';
import 'package:flutter_application_1/3/funcion%20renderizar/render_pacientes.dart';
import 'package:flutter_application_1/3/funcion%20renderizar/render_terapia.dart';
import 'package:flutter_application_1/3/funcion%20renderizar/render_urgencias.dart';

class MenuPrincipal extends StatelessWidget {
  final List<Map<String, String>> elementosMenu = [
    {'titulo': 'Citas Médicas', 'icono': 'medical_appointments_icon'},
    {'titulo': 'Urgencias',     'icono': 'emergency_icon'},
    {'titulo': 'Especialistas', 'icono': 'specialists_icon'},
    {'titulo': 'Farmacia',      'icono': 'pharmacy_icon'},
    {'titulo': 'Pacientes',     'icono': 'patients_icon'},
    {'titulo': 'Terapias',      'icono': 'therapies_icon'},
  ];

  IconData getIcon(String iconName) {
    switch (iconName) {
      case 'medical_appointments_icon':
        return Icons.calendar_today;
      case 'emergency_icon':
        return Icons.local_hospital;
      case 'specialists_icon':
        return Icons.person;
      case 'pharmacy_icon':
        return Icons.local_pharmacy;
      case 'patients_icon':
        return Icons.people;
      case 'therapies_icon':
        return Icons.healing;
      default:
        return Icons.help; // Icono por defecto
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú Principal'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
        ),
        itemCount: elementosMenu.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Verificar el título seleccionado y navegar al menú correspondiente
              if (elementosMenu[index]['titulo'] == 'Citas Médicas') {
                RenderizadorCitasMedicas.renderizarDatos(context);
              } else if (elementosMenu[index]['titulo'] == 'Especialistas') {
                RenderizadorEspecialistas.renderizarDatos(context);
              } else if (elementosMenu[index]['titulo'] == 'Farmacia') {
                RenderizadorFarmacia.renderizarDatos(context);
              } else if (elementosMenu[index]['titulo'] == 'Pacientes') {
                RenderizadorPacientes.renderizarDatos(context);
              } else if (elementosMenu[index]['titulo'] == 'Terapias') {
                RenderizadorTerapias.renderizarDatos(context);
              } else if (elementosMenu[index]['titulo'] == 'Urgencias') {
                RenderizadorUrgencias.renderizarDatos(context);
              }
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(getIcon(elementosMenu[index]['icono']!), size: 50),
                  SizedBox(height: 10),
                  Text(elementosMenu[index]['titulo']!),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
