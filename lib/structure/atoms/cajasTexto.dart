import 'package:flutter/material.dart';
import 'package:seguimiento_docente/common/estilos_txt.dart';
import 'package:seguimiento_docente/common/paleta.dart';

class CajaTexto extends StatelessWidget {
  final double width;

  final String titulo;

  const CajaTexto({super.key, required this.width, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: blanco,
      ),
      width: width,
      child: TextFormField(
        autofocus: false,
        obscureText: false,
        decoration: InputDecoration(
          fillColor: blanco,
          labelText: titulo,
          labelStyle: temaApp.textTheme.titleMedium,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
          suffixIcon: Icon(
            Icons.search,
            color: verde,
            size: MediaQuery.of(context).size.height * 0.05,
          ),
        ),
      ),
    );
  }
}

class CajaTexto1 extends StatelessWidget {
  final double width;
  final double height;
  final String titulo;

  const CajaTexto1(
      {super.key,
      required this.width,
      required this.titulo,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: blanco,
      ),
      width: width,
      height: height,
      child: TextFormField(
        autofocus: false,
        obscureText: false,
        decoration: InputDecoration(
          fillColor: blanco,
          labelText: titulo,
          labelStyle: temaApp.textTheme.titleMedium,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.black, width: 2),
          ),
        ),
      ),
    );
  }
}
