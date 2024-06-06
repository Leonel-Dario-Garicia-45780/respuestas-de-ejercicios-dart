import 'package:flutter/material.dart';

List<Map<String, dynamic>> urgencias = [
  {
    'codigo': 1,
    'nombre': 'Infarto de miocardio',
    'descripcion': 'Ataque al corazón debido a la falta de flujo sanguíneo al músculo cardíaco.',
    'icono': const Icon(Icons.favorite),
  },
  {
    'codigo': 2,
    'nombre': 'Accidente cerebrovascular',
    'descripcion': 'Interrupción del suministro de sangre al cerebro, también conocido como derrame cerebral.',
    'icono': const Icon(Icons.bloodtype_sharp),
  },
  {
    'codigo': 3,
    'nombre': 'Fracturas óseas',
    'descripcion': 'Rotura de un hueso, generalmente causada por un trauma o caída.',
    'icono': const Icon(Icons.bloodtype_sharp),
  },
  {
    'codigo': 4,
    'nombre': 'Asma severa',
    'descripcion': 'Episodio grave de asma que requiere atención médica inmediata.',
    'icono': const Icon(Icons.bloodtype_sharp),
  },
  {
    'codigo': 5,
    'nombre': 'Reacción alérgica severa',
    'descripcion': 'Reacción alérgica grave que puede incluir anafilaxia y requiere tratamiento urgente.',
    'icono': const Icon(Icons.warning),
  },
  {
    'codigo': 6,
    'nombre': 'Apendicitis aguda',
    'descripcion': 'Inflamación del apéndice que generalmente requiere cirugía de emergencia.',
    'icono': const Icon(Icons.healing),
  },
  {
    'codigo': 7,
    'nombre': 'Hemorragia interna',
    'descripcion': 'Sangrado dentro del cuerpo que puede ser potencialmente mortal si no se trata rápidamente.',
    'icono': const Icon(Icons.bloodtype),
  },
  {
    'codigo': 8,
    'nombre': 'Trauma craneoencefálico',
    'descripcion': 'Lesión en la cabeza que puede afectar el cerebro y requiere evaluación médica inmediata.',
    'icono': const Icon(Icons.health_and_safety),
  },
  {
    'codigo': 9,
    'nombre': 'Intoxicación por sustancias',
    'descripcion': 'Ingestión o exposición a sustancias tóxicas que requiere intervención médica urgente.',
    'icono': const Icon(Icons.medical_services),
  },
  {
    'codigo': 10,
    'nombre': 'Quemaduras graves',
    'descripcion': 'Lesiones severas en la piel y tejidos subyacentes debido a calor, productos químicos o electricidad.',
    'icono': const Icon(Icons.fire_extinguisher),
  },
];
