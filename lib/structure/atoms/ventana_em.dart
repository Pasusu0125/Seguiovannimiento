import 'package:flutter/material.dart';
import 'package:seguimiento_docente/common/paleta.dart';
import 'package:seguimiento_docente/structure/atoms/botones.dart';
import 'package:seguimiento_docente/structure/atoms/cajasTexto.dart';
import 'package:seguimiento_docente/structure/atoms/contenedor_txt.dart';
import 'package:seguimiento_docente/structure/atoms/pad_g.dart';

class Screen1 extends StatelessWidget {
  final String titulo;
  final String row1;
  final String row2;
  final String row3;
  final String fieldT1;
  final String fieldT2;
  final String fieldT3;
  final String btn1;
  final String btn2;
  const Screen1({
    super.key,
    required this.titulo,
    required this.row1,
    required this.row2,
    required this.row3,
    required this.fieldT1,
    required this.fieldT2,
    required this.fieldT3,
    required this.btn1,
    required this.btn2,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: blanco,
      title: ConTxT4(w: 0.3, h: 0.12, text: titulo, minL: 26, maxL: 54),
      content: SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.45,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var tamanioVentana = constraints;
            return Padd(
              d: 0,
              u: tamanioVentana.maxHeight * 0.08,
              l: tamanioVentana.maxWidth * 0.16,
              r: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      ConTxT5(
                          w: tamanioVentana.maxWidth * 0.35,
                          h: tamanioVentana.maxHeight * 0.15,
                          text: row1,
                          minL: 14,
                          maxL: 22),
                      CajaTexto1(
                          width: tamanioVentana.maxWidth * 0.3,
                          height: tamanioVentana.maxHeight * 0.15,
                          titulo: fieldT1),
                    ],
                  ),
                  SizedBox(
                    height: tamanioVentana.maxHeight * 0.05,
                  ),
                  Row(
                    children: [
                      ConTxT5(
                          w: tamanioVentana.maxWidth * 0.35,
                          h: tamanioVentana.maxHeight * 0.15,
                          text: row2,
                          minL: 14,
                          maxL: 22),
                      CajaTexto1(
                        width: tamanioVentana.maxWidth * 0.3,
                        height: tamanioVentana.maxHeight * 0.15,
                        titulo: fieldT2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: tamanioVentana.maxHeight * 0.05,
                  ),
                  Row(
                    children: [
                      ConTxT5(
                          w: tamanioVentana.maxWidth * 0.35,
                          h: tamanioVentana.maxHeight * 0.15,
                          text: row3,
                          minL: 14,
                          maxL: 22),
                      CajaTexto1(
                          width: tamanioVentana.maxWidth * 0.3,
                          height: tamanioVentana.maxHeight * 0.15,
                          titulo: fieldT3),
                    ],
                  ),
                  Padd(
                      d: 0,
                      u: tamanioVentana.maxHeight * 0.15,
                      l: 0,
                      r: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Btn2(
                            texto: btn1,
                            width: tamanioVentana.maxWidth * 0.18,
                            heigth: tamanioVentana.maxHeight * 0.16,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Btn3(
                              texto: btn2,
                              width: tamanioVentana.maxWidth * 0.18,
                              heigth: tamanioVentana.maxHeight * 0.16),
                        ],
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  final String msj;
  const Screen2({super.key, required this.msj});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Eliminado!'),
      content: Text(msj),
    );
  }
}
