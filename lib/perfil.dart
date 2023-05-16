// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:palma/inicio.dart';
import 'package:palma/cliente.dart';
import 'package:palma/empleado.dart';
import 'package:palma/producto.dart';
import 'package:palma/venta.dart';
import 'package:palma/galeria.dart';

void main() => runApp(Perfil());

class Perfil extends StatelessWidget {
  const Perfil({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Perfil'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/BTS_during_a_White_House_press_conference_May_31%2C_2022_%28cropped%29.jpg/800px-BTS_during_a_White_House_press_conference_May_31%2C_2022_%28cropped%29.jpg',
            width: 100,
            height: 130,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
              ),
              child: const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                child: Text(
                  ' KIM NAMJOON \n kimnamjoon@gmail.com\n\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const ListTile(
            title: Text(
              "MIS CONTACTOS: ",
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          const ListTile(
            title: Text("Park Jimin"),
            subtitle: Text("16 min ago..."),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            title: Text("Jung Ho-seok"),
            subtitle: Text("2 min ago..."),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            title: Text("Min Yoon-gi"),
            subtitle: Text("1 hour ago..."),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            title: Text("Jeon Jung-kook"),
            subtitle: Text("1 hour ago..."),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            title: Text("Kim Tae-Hyung"),
            subtitle: Text("1 hour ago..."),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const ListTile(
            title: Text("Kim Seok-Jin"),
            subtitle: Text("1 hour ago..."),
            trailing: Icon(Icons.arrow_forward_ios),
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
          ],
        ),
      ),
    );
  }
}
