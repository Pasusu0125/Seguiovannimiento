import 'package:flutter/material.dart';
import 'package:seguimiento_docente/common/paleta.dart';
import 'package:seguimiento_docente/sprint3/content/table_materia.dart';
import 'package:seguimiento_docente/sprint3/data/data_listas.dart';

class PantallaPrueba extends StatefulWidget {
  const PantallaPrueba({super.key});

  @override
  State<PantallaPrueba> createState() => _PantallaPruebaState();
}

class _PantallaPruebaState extends State<PantallaPrueba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo,
      body: Center(
        child: Column(
          children: [
            TablaMatricula(allMaterias: materiasDisponibles),
          ],
        ),
      ),
    );
  }
}
