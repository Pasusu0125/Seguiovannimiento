import "package:flutter/material.dart";
import "package:seguimiento_docente/common/paleta.dart";
import "package:seguimiento_docente/structure/atoms/barra_Lateral.dart";
import "package:seguimiento_docente/structure/atoms/botones.dart";
import "package:seguimiento_docente/structure/atoms/cajasTexto.dart";
import "package:seguimiento_docente/structure/atoms/contenedor_txt.dart";
import "package:seguimiento_docente/structure/atoms/objects.dart";
import "package:seguimiento_docente/structure/atoms/pad_g.dart";
import "package:seguimiento_docente/structure/atoms/tabla.dart";
import 'package:auto_size_text/auto_size_text.dart';
import "package:seguimiento_docente/structure/atoms/ventana_em.dart";

// ignore: camel_case_types
class PageMaterias extends StatefulWidget {
  const PageMaterias({super.key});

  @override
  State<PageMaterias> createState() => _PageMateriasState();
}

// ignore: camel_case_types
class _PageMateriasState extends State<PageMaterias> {
  @override
  Widget build(BuildContext context) {
    double wTable1 = 230;
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
                text: 'LISTA DE MATERIAS',
                minL: 34,
                maxL: 80),
          ),
          Padd(
            d: 0,
            u: MediaQuery.of(context).size.height * 0.05,
            l: 0,
            r: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CajaTexto(
                      width: MediaQuery.of(context).size.width * 0.7,
                      titulo: 'BUSCAR'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  const Btn1(
                    texto: 'AGREGAR',
                    width: 0.1,
                    heigth: 0.08,
                    op: Screen1(
                      titulo: 'Agregar Materia',
                      row1: 'Nombre',
                      fieldT1: '',
                      row2: 'Créditos',
                      fieldT2: '',
                      row3: 'Descripción',
                      fieldT3: '',
                      btn1: 'Agregar',
                      btn2: 'Cancelar',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padd(
              d: 0,
              u: MediaQuery.of(context).size.height * 0.10,
              l: 0,
              r: MediaQuery.of(context).size.width * 0,
              child: Center(
                child: Tabla2(
                    tituloColumna0: 'Id',
                    tituloColumna1: 'Nombre',
                    tituloColumna2: 'Número de créditos',
                    tituloColumna3: 'Descripción',
                    tituloColumna4: 'Editar',
                    tituloColumna5: 'Borrar',
                    filasTabla: [
                      DataRow(
                        color: MaterialStatePropertyAll(blancoFondoTabla),
                        cells: <DataCell>[
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              width: wTable1 / 2,
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
                              width: wTable1,
                              child: const AutoSizeText(
                                'Ingeniería de software 1',
                                minFontSize: 18,
                                maxFontSize: 18,
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              width: wTable1,
                              child: const AutoSizeText(
                                '5',
                                minFontSize: 18,
                                maxFontSize: 18,
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              width: wTable1,
                              child: const AutoSizeText(
                                'Buena materia',
                                minFontSize: 18,
                                maxFontSize: 18,
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              width: wTable1 / 2,
                              child: const BtnIconoEditar(
                                op: Screen1(
                                  titulo: 'Editar Materia',
                                  row1: 'Nombre',
                                  fieldT1: '',
                                  row2: 'Créditos',
                                  fieldT2: '',
                                  row3: 'Descripción',
                                  fieldT3: '',
                                  btn1: 'Editar',
                                  btn2: 'Cancelar',
                                ),
                              ),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              width: wTable1 / 2,
                              child: const BtnIconoEliminar(
                                op: Screen2(msj: 'Materia Eliminada'),
                              ),
                            ),
                          ),
                        ],
                      )
                    ]),
              )),
        ],
      ),
    );
  }
}
