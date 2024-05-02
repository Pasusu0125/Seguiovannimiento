import "package:flutter/material.dart";
import "package:seguimiento_docente/common/estilos_txt.dart";
import "package:seguimiento_docente/common/paleta.dart";
import "package:seguimiento_docente/structure/atoms/barra_Lateral.dart";
import "package:seguimiento_docente/structure/atoms/botones.dart";
import "package:seguimiento_docente/structure/atoms/contenedor_txt.dart";
import "package:seguimiento_docente/structure/atoms/pad_g.dart";
import "package:seguimiento_docente/structure/atoms/tabla.dart";
import 'package:auto_size_text/auto_size_text.dart';

// ignore: camel_case_types
class MatricularMaterias extends StatefulWidget {
  const MatricularMaterias({super.key});

  @override
  State<MatricularMaterias> createState() => _PageDocentesState();
}

// ignore: camel_case_types
class _PageDocentesState extends State<MatricularMaterias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fondo.withOpacity(0.5),
      appBar: AppBar(
        foregroundColor: colorIcono1,
        backgroundColor: verde,
        automaticallyImplyLeading: true,
        title: const ConTxT3(
            w: 0.50, h: 0.09, text: 'B I E N V E N I D O', minL: 28, maxL: 36),
        centerTitle: true,
        elevation: 4,
      ),
      drawer: const BarraLateral2(),
      body: Column(
        children: [
          Padd(
            d: 0,
            u: MediaQuery.of(context).size.height * 0.05,
            l: 0,
            r: 0,
            child: const ConTxT4(
                w: 0.50,
                h: 0.15,
                text: 'M A T E R I A S   M A T R I C U L A D A S',
                minL: 34,
                maxL: 80),
          ),
          Padd(
            d: 0,
            u: MediaQuery.of(context).size.height * 0.05,
            l: 0,
            r: MediaQuery.of(context).size.width * 0.2,
            child: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Btn1(
                    texto: 'MATRICULAR',
                    width: 0.1,
                    heigth: 0.08,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3,
              child: TableWidget(
                columns: const [
                  'Id',
                  'Nombre',
                  'Numero de créditos',
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.05,
                          child: const AutoSizeText(
                            '1',
                            minFontSize: 18,
                            maxFontSize: 18,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: const AutoSizeText(
                            'Ingeniería de software 1',
                            minFontSize: 16,
                            maxFontSize: 22,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.05,
                          child: const AutoSizeText(
                            '3',
                            minFontSize: 16,
                            maxFontSize: 22,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              color: verde,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConTxT1(
                    w: MediaQuery.of(context).size.width * 0.3,
                    h: MediaQuery.of(context).size.height * 0.1,
                    text: 'Número total de créditos',
                    estiloTxt: temaApp.textTheme.displayMedium,
                    minL: 22,
                    maxL: 42),
                ConTxT1(
                    w: MediaQuery.of(context).size.width * 0.3,
                    h: MediaQuery.of(context).size.height * 0.1,
                    text: '3',
                    estiloTxt: temaApp.textTheme.displayMedium,
                    minL: 22,
                    maxL: 42),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
