import 'package:flutter/material.dart';
import 'package:palma/inicio.dart';
import 'package:palma/cliente.dart';
import 'package:palma/empleado.dart';
import 'package:palma/producto.dart';
import 'package:palma/venta.dart';
import 'package:palma/perfil.dart';
import 'package:palma/galeria.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Rutas Nombradas',
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/primera',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/primera': (context) => const Inicio(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/segunda': (context) => const Cliente(),
      '/tercera': (context) => const Empleado(),
      '/cuarta': (context) => const Producto(),
      '/quinta': (context) => const Venta(),
      '/sexta': (context) => const Perfil(),
      '/septima': (context) => const Galeria(),
    },
  ));
}
