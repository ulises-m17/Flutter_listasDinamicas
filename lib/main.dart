import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final titulos = [
    "uno",
    "Dos",
    "Tres",
    "Cuatro",
    "uno",
    "Dos",
    "Tres",
    "Cuatro",
  ];
  final subtitulos = ["sub", "sub", "sub"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Componentes dentro de un ListView',
        home: Scaffold(
            appBar: AppBar(
              title: Text('ListView'),
            ),
            body: ListView(
              children:
                  _Metodo_con_Map(), // MANDAMOS LLAMAR AL WIDGET LISTTITLE QUE ESTA EN EL METODO LISTADINAMICA
            )));
  }

// CON ESTE METODO SE RECORRE LA LISTA DECLARA AL PRINCIPIO Y SE VA CREANDO EL WIDGET DE TIPO LIST CON SUS TITULOS
/*
  List<Widget> _listaDinamica() {
    // DECLARAMOS UN METODO DE TIPO LIST WIGET PRIVADO _

    List<Widget> lista_mostrar =
        new List<Widget>(); // UNA LISTA DE WIDGETS QUE GUARDARA LOS TITULOS

    for (var datos in titulos) {
      // GUARDAMOS EN LA VARIABLE DATOS LO QUE CONTIENE LA LISTA TITULO
      final titulo = ListTile(
          title: Text(datos)); // UNA COSTANTE QUE ALMACENARA LOS WIDGETS TITULO
      lista_mostrar // AGREGAMOS A LA NUEVA LISTA LOS DATOS
        ..add(titulo)
        ..add(Divider(
          // LE AGREGAMOS UN DIVISOR
          color: Colors.cyan,
        ));
    }
    return lista_mostrar; // RETORNAMOS LA NUEVA LISTA
  }*/

  List<Widget> _Metodo_con_Map() {
    var titulo = titulos.map((elementos) {
      return Column(
        children: [
          ListTile(
            title: Text(elementos),
            subtitle: Text(
                "usamos el widget subtitulo"), // este widget agrega un subtitulo
            trailing: Icon(Icons.adb), // agrega un icono al final
            leading: Icon(Icons.assessment,
                color: Colors.tealAccent), // agrega un icono al inicio
            onTap: () => null, // agrega un metodo al hacer clic en la lista
          ),
          Divider(
            // agrega un divisor para cada elemento
            color: Colors.amber[300],
            height: 25.2,
          )
        ],
      );
    }).toList();
    return titulo;
  }
}
