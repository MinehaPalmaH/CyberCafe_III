import 'package:flutter/material.dart';

import 'package:palma/cliente.dart';
import 'package:palma/empleado.dart';
import 'package:palma/galeria.dart';
import 'package:palma/inicio.dart';
import 'package:palma/perfil.dart';
import 'package:palma/producto.dart';
import 'package:palma/venta.dart';

void main() => runApp(const Info());

class Info extends StatelessWidget {
  const Info({super.key});

  static const String _title = 'Nosotros';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          backgroundColor: Colors.green,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.computer_outlined),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Image.network(
                  'https://0201.nccdn.net/1_2/000/000/123/6fc/curso-nivel-cero-320x422.jpg#RDAMDAID9080023'),
            ),
            Center(
              child: Image.network(
                  'https://0201.nccdn.net/4_2/000/000/07a/dbb/Curso-de-computacion-Nivel-Medio2-320x414.jpg#RDAMDAID9080020'),
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
                leading: const Icon(Icons.camera),
                title: const Text(' Galeria '),
                subtitle: const Text("Usuario"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Info()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
