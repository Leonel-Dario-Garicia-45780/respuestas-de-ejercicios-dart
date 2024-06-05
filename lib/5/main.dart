import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control Deslizante de Imágenes',
      home: PantallaControlDeslizante(),
    );
  }
}

class PantallaControlDeslizante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control Deslizante de Imágenes'),
      ),
      body: Center(
        child: SizedBox(
          height: 200.0,
          child: PageView(
            children: [
              /*  //! ejemplo de imagenes locales o web
              Image.asset('assets/imagen_local_1.jpg'), // Imagen local
              Image.network('https://via.placeholder.com/600x400?text=Imagen+2'), // Imagen de la web
              */
              //! en mi caso usare web
              Image.network('https://tse3.mm.bing.net/th?id=OIP.FiUOpmri_2pS3zjeNi8KnAHaG8&pid=Api&P=0&h=180/600x400?'),
                                                               //!medidas de la imagen que se pueden editar  ^^^ ^^^
              Image.network('https://tse2.mm.bing.net/th?id=OIP.RgnIngZTz9di-Y04Z_3_FAHaEZ&pid=Api&P=0&h=180/600x400?'),
              Image.network('https://tse1.mm.bing.net/th?id=OIP.xKPg7e4YRzIBTXzmEeSxTAHaEo&pid=Api&P=0&h=180'),
            ],
          ),
        ),
      ),
    );
  }
}
