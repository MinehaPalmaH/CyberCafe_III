// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:palma/inicio.dart';
import 'package:palma/cliente.dart';
import 'package:palma/perfil.dart';
import 'package:palma/producto.dart';
import 'package:palma/empleado.dart';
import 'package:palma/galeria.dart';

void main() => runApp(Venta());

class Venta extends StatelessWidget {
  const Venta({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Venta'),
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
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  prefixIcon: Icon(
                    Icons.local_cafe_outlined,
                    color: Colors.black54,
                  ),
                  hintText: "Orden",
                  helperText: "Ingrese No. de orden",
                ),
              )), //Fin de Container 1
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black54,
                  ),
                  hintText: "Empleado",
                  helperText: "Ingrese ID de empleado",
                ),
              )), //Fin de Container 2
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  prefixIcon: Icon(
                    Icons.tag_faces_rounded,
                    color: Colors.black54,
                  ),
                  hintText: "Cliente",
                  helperText: "Ingrese ID de cliente",
                ),
              )), //Fin de Container 3
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  prefixIcon: Icon(
                    Icons.location_on_rounded,
                    color: Colors.black54,
                  ),
                  hintText: "Sucursal",
                  helperText: "Ingrese sucursal",
                ),
              )), //Fin de Container 4
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  prefixIcon: Icon(
                    Icons.lock_clock_rounded,
                    color: Colors.black54,
                  ),
                  hintText: "Hora",
                  helperText: "Ingrese hora",
                ),
              )), //Fin de Container 5
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  prefixIcon: Icon(
                    Icons.money,
                    color: Colors.black54,
                  ),
                  hintText: "Precio",
                  helperText: "Ingrese tipo de pago",
                ),
              )), //Fin de Container 6
          Container(
              padding: const EdgeInsets.all(20),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  prefixIcon: Icon(
                    Icons.attach_money_rounded,
                    color: Colors.black54,
                  ),
                  hintText: "Precio",
                  helperText: "Ingrese precio total",
                ),
              )), //Fin de Container 7
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
