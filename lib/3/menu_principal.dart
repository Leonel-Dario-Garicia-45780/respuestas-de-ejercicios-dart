import 'package:flutter/material.dart';
import 'package:flutter_application_1/3/menus/menu_de_citas_medicas.dart';
import 'package:flutter_application_1/3/menus/menu_de_especialistas.dart';
import 'package:flutter_application_1/3/menus/menu_de_farmacia.dart';
import 'package:flutter_application_1/3/menus/menu_de_pacientes.dart';
import 'package:flutter_application_1/3/menus/menu_de_terapias.dart';
import 'package:flutter_application_1/3/menus/menu_de_urgencias.dart';


class MenuPrincipal extends StatelessWidget {
  final List<Map<String, String>> elementosMenu = [
    {'titulo': 'Citas Médicas', 'icono': 'medical_appointments_icon'},
    {'titulo': 'Urgencias',     'icono': 'emergency_icon'},
    {'titulo': 'Especialistas', 'icono': 'specialists_icon'},
    {'titulo': 'Farmacia',      'icono': 'pharmacy_icon'},
    {'titulo': 'Pacientes',     'icono': 'patients_icon'},
    {'titulo': 'Terapias',      'icono': 'therapies_icon'},
  ];

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
              switch (elementosMenu[index]['titulo']) {
                case 'Citas Médicas':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuCitasMedicas()),
                  );
                  break;
                case 'Urgencias':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuUrgencias()),
                  );
                  break;
                case 'Especialistas':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuEspecialistas()),
                  );
                  break;
                case 'Farmacia':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuFarmacia()),
                  );
                  break;
                case 'Pacientes':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPacientes()),
                  );
                  break;
                case 'Terapias':
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuTerapias()),
                  );
                  break;
              }
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.medical_services, size: 50), // Cambia el ícono según corresponda
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
