import "package:flutter/material.dart";
import "package:seguimiento_docente/common/paleta.dart";
import "package:seguimiento_docente/structure/atoms/barra_Lateral.dart";
import 'package:auto_size_text/auto_size_text.dart';

// ignore: camel_case_types
class Welcome_Page extends StatefulWidget {
  const Welcome_Page({super.key});

  @override
  State<Welcome_Page> createState() => _Welcome_PageState();
}

// ignore: camel_case_types
class _Welcome_PageState extends State<Welcome_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo.withOpacity(0.5),
      appBar: AppBar(
        title: const AutoSizeText('B I E N V E N I D O'),
      ),
      drawer: const BarraLateral2(),
    );
  }
}
