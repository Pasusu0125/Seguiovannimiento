import 'package:flutter/material.dart';
import 'package:seguimiento_docente/common/estilos_txt.dart';
import 'package:seguimiento_docente/pages/sprint3/agregar_materia_docente_editar.dart';
import 'package:seguimiento_docente/pages/sprint3/matricular_materias.dart';
import 'package:seguimiento_docente/pages/sprint3/page_Docentes.dart';
import 'package:seguimiento_docente/pages/prueba.dart';
import 'package:seguimiento_docente/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: temaApp,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: MyRouters.generateRoute,
        home: const PageDocentes());
  }
}
