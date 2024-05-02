import "package:flutter/material.dart";
import 'package:auto_size_text/auto_size_text.dart';
import "package:seguimiento_docente/common/estilos_txt.dart";
import "package:seguimiento_docente/common/paleta.dart";

class Tabla1 extends StatelessWidget {
  final String tituloColumna0;
  final String tituloColumna1;
  final String tituloColumna2;
  final String tituloColumna3;
  final String tituloColumna4;
  final String tituloColumna5;
  const Tabla1({
    super.key,
    required this.tituloColumna0,
    required this.tituloColumna1,
    required this.tituloColumna2,
    required this.tituloColumna3,
    required this.tituloColumna4,
    required this.tituloColumna5,
  });

  @override
  Widget build(BuildContext context) {
    double wTable = 87;
    double wTable1 = 247;
    final scrollController = ScrollController();

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      child: LayoutBuilder(
        builder: (context, constraints) {
          var tamanioCaja = constraints;
          return Container(
            decoration: BoxDecoration(
                color: blancoFondoTabla,
                borderRadius: BorderRadius.circular(20)),
            width: tamanioCaja.maxWidth,
            height: tamanioCaja.maxHeight,
            child: Scrollbar(
              thumbVisibility: true,
              thickness: 10,
              controller: scrollController,
              scrollbarOrientation: ScrollbarOrientation.bottom,
              child: ListView(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: verde,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        width: 1375,
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: Row(
                          children: [
                            Container(
                              width: wTable1 / 2,
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                tituloColumna0,
                                maxLines: 1,
                                minFontSize: 16,
                                maxFontSize: 18,
                                style: temaApp.textTheme.displaySmall,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  tituloColumna1,
                                  maxLines: 1,
                                  minFontSize: 16,
                                  maxFontSize: 18,
                                  style: temaApp.textTheme.displaySmall,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  tituloColumna2,
                                  maxLines: 1,
                                  minFontSize: 16,
                                  maxFontSize: 18,
                                  style: temaApp.textTheme.displaySmall,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                child: AutoSizeText(
                                  tituloColumna3,
                                  maxLines: 1,
                                  minFontSize: 16,
                                  maxFontSize: 18,
                                  style: temaApp.textTheme.displaySmall,
                                ),
                              ),
                            ),
                            Container(
                              width: wTable1 / 2,
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                tituloColumna4,
                                maxLines: 1,
                                maxFontSize: 18,
                                minFontSize: 16,
                                style: temaApp.textTheme.displaySmall,
                              ),
                            ),
                            Container(
                              width: wTable1 / 2,
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                'Borrar',
                                maxLines: 1,
                                minFontSize: 16,
                                maxFontSize: 18,
                                style: temaApp.textTheme.displaySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: Scrollbar(
                            thumbVisibility: true,
                            thickness: 10,
                            controller: scrollController,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Table(
                                columnWidths: <int, TableColumnWidth>{
                                  0: FixedColumnWidth(wTable1 / 2),
                                  1: FixedColumnWidth(wTable1 + wTable),
                                  2: FixedColumnWidth(wTable1 + wTable),
                                  3: FixedColumnWidth(wTable1 + wTable),
                                  4: FixedColumnWidth(wTable1 / 2),
                                  5: FixedColumnWidth(wTable1 / 2),
                                },
                                children: const [],
                                defaultVerticalAlignment:
                                    TableCellVerticalAlignment.middle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Tabla2 extends StatelessWidget {
  final String tituloColumna0;
  final String tituloColumna1;
  final String tituloColumna2;
  final String tituloColumna3;
  final String tituloColumna4;
  final String tituloColumna5;
  final List<DataRow> filasTabla;
  const Tabla2(
      {super.key,
      required this.tituloColumna0,
      required this.tituloColumna1,
      required this.tituloColumna2,
      required this.tituloColumna3,
      required this.tituloColumna4,
      required this.tituloColumna5,
      required this.filasTabla});

  @override
  Widget build(BuildContext context) {
    double wTable1 = 230;
    final scrollController = ScrollController();

    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.1,
          right: MediaQuery.of(context).size.width * 0.1),
      child: Container(
        color: const Color.fromARGB(0, 255, 193, 7),
        width: 1363,
        height: MediaQuery.of(context).size.height * 0.25,
        child: Scrollbar(
          thumbVisibility: true,
          thickness: 10,
          controller: scrollController,
          scrollbarOrientation: ScrollbarOrientation.bottom,
          child: ListView(
            scrollDirection: Axis.horizontal,
            controller: scrollController,
            children: [
              DataTable(
                  headingRowHeight: MediaQuery.of(context).size.width * 0.05,
                  headingRowColor: MaterialStatePropertyAll(verde),
                  dataRowHeight: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: blancoFondoTabla,
                  ),
                  columns: <DataColumn>[
                    DataColumn(
                      label: Container(
                        width: wTable1 / 2,
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          tituloColumna0,
                          maxLines: 1,
                          minFontSize: 16,
                          maxFontSize: 18,
                          style: temaApp.textTheme.displaySmall,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        width: wTable1,
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          tituloColumna1,
                          maxLines: 1,
                          minFontSize: 16,
                          maxFontSize: 18,
                          style: temaApp.textTheme.displaySmall,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        width: wTable1,
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          tituloColumna2,
                          maxLines: 1,
                          minFontSize: 16,
                          maxFontSize: 18,
                          style: temaApp.textTheme.displaySmall,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        width: wTable1,
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          tituloColumna3,
                          maxLines: 1,
                          minFontSize: 16,
                          maxFontSize: 18,
                          style: temaApp.textTheme.displaySmall,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        width: wTable1 / 2,
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          tituloColumna4,
                          maxLines: 1,
                          minFontSize: 16,
                          maxFontSize: 18,
                          style: temaApp.textTheme.displaySmall,
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        width: wTable1 / 2,
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          tituloColumna5,
                          maxLines: 1,
                          minFontSize: 16,
                          maxFontSize: 18,
                          style: temaApp.textTheme.displaySmall,
                        ),
                      ),
                    ),
                  ],
                  rows: filasTabla)
            ],
          ),
        ),
      ),
    );
  }
}
