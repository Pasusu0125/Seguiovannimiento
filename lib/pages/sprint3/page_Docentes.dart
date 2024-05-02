import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
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
List<String> Docentes = ['Giovanni Hernadez', 'Gustavo Sanchez'];

class PageDocentes extends StatefulWidget {
  const PageDocentes({super.key});

  @override
  State<PageDocentes> createState() => _PageDocentesState();
}

// ignore: camel_case_types
class _PageDocentesState extends State<PageDocentes> {
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
                text: 'LISTA DE DOCENTES',
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
                      titulo: 'AGREGAR DOCENTE',
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
                  'Descripción',
                  'Semestre',
                  'Docente',
                  'Editar',
                  'Borrar ',
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
                      DataCell(
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * 0.05,
                          child: const AutoSizeText(
                            'Buena materia',
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
                            '7',
                            minFontSize: 16,
                            maxFontSize: 22,
                            maxLines: 1,
                          ),
                        ),
                      ),
                      const DataCell(
                        BtnIconoDocente(),
                      ),
                      const DataCell(
                        BtnIconoEditar(),
                      ),
                      const DataCell(
                        BtnIconoEliminar(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
