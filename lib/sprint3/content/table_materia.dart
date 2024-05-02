import "package:adaptive_scrollbar/adaptive_scrollbar.dart";
import "package:flutter/material.dart";
import "package:seguimiento_docente/common/paleta.dart";
import "package:seguimiento_docente/sprint3/data/data_listas.dart";
import "package:seguimiento_docente/sprint3/models/materia_model.dart";
import "package:seguimiento_docente/structure/atoms/botones.dart";

class TablaMatricula extends StatefulWidget {
  final List<Materia> allMaterias;
  const TablaMatricula({super.key, required this.allMaterias});

  @override
  State<TablaMatricula> createState() => _TablaMatriculaState();
}

class _TablaMatriculaState extends State<TablaMatricula> {
  Materia? selectedMateriaDisponible;
  Materia? selectedMateriaSeleccionada;

  void retirarMateria() {
    setState(() {
      if (selectedMateriaSeleccionada != null) {
        final creditDifference = selectedMateriaSeleccionada!.nCreditos;
        materiasDisponibles.add(selectedMateriaSeleccionada!);
        materiasDisponibles
            .firstWhere((materia) => materia == selectedMateriaSeleccionada!)
            .isMatriculated = false;
        materiasSeleccionadas.remove(selectedMateriaSeleccionada!);
        selectedMateriaSeleccionada = null;
        canAddMateria = false;
        totalCreditosMateriasSeleccionadas -= creditDifference;
      }
    });
  }

  void agregarMateria() {
    setState(() {
      if (selectedMateriaDisponible != null) {
        final creditDifference = selectedMateriaDisponible!.nCreditos;
        materiasSeleccionadas.add(selectedMateriaDisponible!);
        materiasSeleccionadas
            .firstWhere((materia) => materia == selectedMateriaDisponible!)
            .isMatriculated = false;
        materiasDisponibles.remove(selectedMateriaDisponible!);
        selectedMateriaDisponible = null;
        canAddMateria = false;
        totalCreditosMateriasSeleccionadas += creditDifference;
      }
    });
  }

  void filterMaterias() {
    setState(() {
      materiasDisponibles = widget.allMaterias
          .where((materia) => materia.semestre == selectedSemester)
          .where((materia) => !materiasSeleccionadas
              .contains(materia)) // Verificar si está en materiasSeleccionadas
          .toList();
    });
  }

  int selectedSemester = 1; // Semestre seleccionado inicialmente

  List<int> semesters = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int totalCreditosMateriasSeleccionadas = 0; // Contador de créditos

  @override
  Widget build(BuildContext context) {
    //Controladores Scrolling tabla 1
    final verticalScrollController = ScrollController();
    final horizontalScrollController = ScrollController();
    //Controladores Scrolling tabla 2
    final verticalScrollController1 = ScrollController();
    final horizontalScrollController1 = ScrollController();
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: blanco,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black)),
            child: DropdownButton<int>(
              underline: Container(
                height: 0,
              ),
              value: selectedSemester,
              items: semesters
                  .map((semestre) => DropdownMenuItem(
                        value: semestre,
                        child: Text('Semestre $semestre'),
                      ))
                  .toList(),
              onChanged: (int? newSemester) {
                selectedSemester = newSemester!;
                filterMaterias();
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Text(
            'Créditos totales seleccionados: $totalCreditosMateriasSeleccionadas',
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: const Color.fromARGB(0, 255, 255, 255),
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width * 0.55,
                height: MediaQuery.of(context).size.height * 0.5,
                child: AdaptiveScrollbar(
                  sliderDefaultColor: Colors.grey.withOpacity(0.7),
                  sliderActiveColor: Colors.grey,
                  controller: verticalScrollController,
                  child: AdaptiveScrollbar(
                    controller: horizontalScrollController,
                    position: ScrollbarPosition.bottom,
                    sliderDefaultColor: Colors.grey.withOpacity(0.7),
                    sliderActiveColor: Colors.grey,
                    child: SingleChildScrollView(
                      controller: verticalScrollController,
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(
                        controller: horizontalScrollController,
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: const [
                            DataColumn(label: Text('Nombre')),
                            DataColumn(label: Text('Descripción')),
                            DataColumn(label: Text('Créditos')),
                            DataColumn(label: Text('Semestre')),
                          ],
                          rows: materiasDisponibles
                              .where((materia) =>
                                  materia.semestre == selectedSemester)
                              .map(
                                (materia) => DataRow(
                                  cells: [
                                    DataCell(Text(materia.nombre)),
                                    DataCell(Text(materia.descrpcion)),
                                    DataCell(
                                        Text(materia.nCreditos.toString())),
                                    DataCell(Text(materia.semestre.toString())),
                                  ],
                                  color: MaterialStatePropertyAll(
                                    materia == selectedMateriaDisponible &&
                                            !materiasSeleccionadas
                                                .contains(materia)
                                        ? const Color.fromARGB(
                                            255, 142, 219, 145)
                                        : const Color.fromARGB(
                                            255, 255, 255, 255),
                                  ),
                                  selected: materia ==
                                          selectedMateriaDisponible &&
                                      !materiasSeleccionadas.contains(materia),
                                  onSelectChanged: (bool? value) {
                                    if (value!) {
                                      setState(() {
                                        selectedMateriaDisponible = materia;
                                        canAddMateria = true;
                                      });
                                    } else {
                                      setState(() {
                                        selectedMateriaDisponible = null;
                                        canAddMateria = false;
                                      });
                                    }
                                  },
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.06,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      disabledColor: const Color.fromARGB(255, 86, 86, 86),
                      color: verde,
                      onPressed: selectedMateriaDisponible != null
                          ? () => agregarMateria()
                          : null,
                      child: Icon(
                        color: blanco,
                        Icons.arrow_forward_rounded,
                        size: MediaQuery.of(context).size.width * 0.02,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.06,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      onPressed: selectedMateriaSeleccionada != null
                          ? () => retirarMateria()
                          : null,
                      disabledColor: const Color.fromARGB(255, 86, 86, 86),
                      color: verde,
                      child: Icon(
                        color: blanco,
                        Icons.arrow_back_rounded,
                        size: MediaQuery.of(context).size.width * 0.02,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: const Color.fromARGB(0, 255, 255, 255),
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.5,
                child: AdaptiveScrollbar(
                  sliderDefaultColor: Colors.grey.withOpacity(0.7),
                  sliderActiveColor: Colors.grey,
                  controller: verticalScrollController1,
                  child: AdaptiveScrollbar(
                    controller: horizontalScrollController1,
                    position: ScrollbarPosition.bottom,
                    sliderDefaultColor: Colors.grey.withOpacity(0.7),
                    sliderActiveColor: Colors.grey,
                    child: SingleChildScrollView(
                      controller: verticalScrollController1,
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(
                        controller: horizontalScrollController1,
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: const [
                            DataColumn(label: Expanded(child: Text('Nombre'))),
                            DataColumn(
                                label: Expanded(child: Text('Créditos'))),
                            DataColumn(
                                label: Expanded(child: Text('Semestre'))),
                          ],
                          rows: materiasSeleccionadas
                              .map(
                                (materia) => DataRow(
                                  cells: [
                                    DataCell(Text(materia.nombre)),
                                    DataCell(
                                        Text(materia.nCreditos.toString())),
                                    DataCell(Text(materia.semestre.toString())),
                                  ],
                                  selected: materia ==
                                          selectedMateriaSeleccionada &&
                                      materiasSeleccionadas.contains(materia),
                                  onSelectChanged: (bool? value) {
                                    if (value!) {
                                      setState(() {
                                        selectedMateriaSeleccionada = materia;
                                      });
                                    } else {
                                      setState(() {
                                        selectedMateriaSeleccionada = null;
                                      });
                                    }
                                  },
                                  color: MaterialStatePropertyAll(
                                    materia == selectedMateriaSeleccionada &&
                                            materiasSeleccionadas
                                                .contains(materia)
                                        ? const Color.fromARGB(
                                            255, 142, 219, 145)
                                        : const Color.fromARGB(
                                            255, 255, 255, 255),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Btn1(
            texto: 'Cerrar Matricula',
            width: 0.1,
            heigth: 0.08,
          ),
        ],
      ),
    );
  }
}
