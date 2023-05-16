import 'package:flutter/material.dart';
import 'package:palma/inicio.dart';
import 'package:palma/empleado.dart';
import 'package:palma/perfil.dart';
import 'package:palma/producto.dart';
import 'package:palma/venta.dart';
import 'package:palma/galeria.dart';

void main() => runApp(Cliente());

class Cliente extends StatelessWidget {
  const Cliente({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cliente'),
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
                    Icons.person,
                    color: Colors.black54,
                  ),
                  hintText: "Nombre",
                  helperText: "Ingrese su(s) nombre(s) ",
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
                  hintText: "Apellido",
                  helperText: "Ingrese su(s) apellido(s)",
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
                    Icons.phone_android_rounded,
                    color: Colors.black54,
                  ),
                  hintText: "Teléfono",
                  helperText: "Ingrese su no. de teléfono",
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
                  hintText: "Dirección",
                  helperText: "Ingrese su dirección",
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
                    Icons.numbers,
                    color: Colors.black54,
                  ),
                  hintText: "No. de PC",
                  helperText: "Ingrese su no. de PC",
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
                    Icons.border_color_rounded,
                    color: Colors.black54,
                  ),
                  hintText: "Orden",
                  helperText: "Ingrese su no. de orden",
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
                    Icons.numbers_rounded,
                    color: Colors.black54,
                  ),
                  hintText: "ID",
                  helperText: "Ingrese su ID",
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
