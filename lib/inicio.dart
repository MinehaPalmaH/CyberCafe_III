import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:palma/cliente.dart';
import 'package:palma/empleado.dart';
import 'package:palma/galeria.dart';
import 'package:palma/info.dart';
import 'package:palma/perfil.dart';
import 'package:palma/producto.dart';
import 'package:palma/venta.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});
  static const header = 'Cybercafe';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: header,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: header),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Image.network(
            'https://culturacafeina.com/wp-content/uploads/2020/04/como-identificar-un-buen-coffee-shop-2.jpg',
            width: 100,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Container(
              width: 100,
              height: 400,
              decoration: BoxDecoration(
                color: const Color(0xFFE4D4C3),
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
              ),
              child: const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                child: Text(
                  ' En La nuestro Cibercafe, nos dedicamos a brindarles a nuestros clientes un servicio cordial. Valoramos su negocio. Nuestra misión es ofrecer productos y servicios confiables con un enfoque orientado al hacía el cliente y su satisfacción.\n\n Nuestro equipo atento y profesional puede brindar una variedad de servicios para satisfacer sus requisitos, después de todo el cliente siempre tiene la razón (A excepción de tratos malos al personal).\n\nPara obtener más información acerca de La Web@a Cibercafe, y los productos y servicios que podemos ofrecer, llámenos al 52-6461759570.\n\n',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),

          //IMAGEN UBICACION
          Center(
            child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  'https://i.blogs.es/964fcc/google-maps-portada-trafico/1366_2000.jpg',
                  width: 400,
                  height: 100,
                  fit: BoxFit.cover,
                )),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: Image.network(
                "https://fastly.picsum.photos/id/1060/536/354.jpg?blur=2&hmac=0zJLs1ar00sBbW5Ahd_4zA6pgZqCVavwuHToO6VtcYY",
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(' Inicio '),
              subtitle: const Text("HomePage"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Inicio()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.tag_faces_rounded),
              title: const Text(' Cliente '),
              subtitle: const Text("Formulario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Cliente()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text(' Empleado '),
              subtitle: const Text("Formulario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Empleado()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.coffee_rounded),
              title: const Text(' Producto '),
              subtitle: const Text("Formulario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Producto()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text(' Venta '),
              subtitle: const Text("Formulario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Venta()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil'),
              subtitle: const Text("Formulario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Perfil()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text(' Galeria '),
              subtitle: const Text("Usuario"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Galeria()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline_rounded),
              title: const Text(' Información'),
              subtitle: const Text("Cursos"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const Info()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
