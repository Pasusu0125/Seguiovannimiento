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
class PageEstudiantes extends StatefulWidget {
  const PageEstudiantes({super.key});

  @override
  State<PageEstudiantes> createState() => _PageEstudiantesState();
}

// ignore: camel_case_types
class _PageEstudiantesState extends State<PageEstudiantes> {
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
                text: 'LISTA DE ESTUDIANTES',
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
                      titulo: 'AGREGAR ESTUDIANTE',
                      row1: 'Nombres',
                      fieldT1: '',
                      row2: 'Apellidos',
                      fieldT2: '',
                      row3: 'Correo',
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
                    tituloColumna1: 'Nombres',
                    tituloColumna2: 'Apellidos',
                    tituloColumna3: 'Correo',
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
                                'Daniela',
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
                                'Zuleta',
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
                                'danielazuletama@umariana.edu.co',
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
                                  titulo: 'EDITAR ESTUDIANTE',
                                  row1: 'Nombre',
                                  fieldT1: '',
                                  row2: 'Apellidos',
                                  fieldT2: '',
                                  row3: 'Correo',
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
                                op: Screen2(msj: 'Estudiante Eliminado'),
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
