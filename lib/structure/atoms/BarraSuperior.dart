import 'package:flutter/material.dart';
import 'package:seguimiento_docente/common/estilos_txt.dart';
import 'package:seguimiento_docente/common/paleta.dart';
import 'package:seguimiento_docente/structure/atoms/contenedor_txt.dart';

class BarraSuperior extends StatelessWidget {
  const BarraSuperior({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: colorIcono1,
      backgroundColor: verde,
      automaticallyImplyLeading: true,
      title: ConTxT1(
          w: 0.3,
          h: 0.09,
          text: 'B I E N V E N I D O',
          estiloTxt: temaApp.textTheme.titleMedium,
          minL: 4,
          maxL: 28),
      centerTitle: true,
      elevation: 4,
    );
  }
}
