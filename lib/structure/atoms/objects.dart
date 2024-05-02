import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:seguimiento_docente/common/paleta.dart";
import "package:seguimiento_docente/pages/sprint3/page_Docentes.dart";
import "package:seguimiento_docente/structure/atoms/botones.dart";
import "package:seguimiento_docente/structure/atoms/contenedor_txt.dart";

class Ciculo extends StatelessWidget {
  final double w;
  const Ciculo({super.key, required this.w});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: w,
    );
  }
}

class BtnIconoEditar extends StatelessWidget {
  final op;
  const BtnIconoEditar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.edit_square,
          color: iconoEditar,
        ));
  }
}

class BtnIconoEliminar extends StatelessWidget {
  final op;
  const BtnIconoEliminar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.delete_forever,
          color: iconoEliminar,
        ));
  }
}

class BtnIconoDocente extends StatefulWidget {
  final op;
  const BtnIconoDocente({super.key, this.op});

  @override
  State<BtnIconoDocente> createState() => _BtnIconoDocenteState();
}

class _BtnIconoDocenteState extends State<BtnIconoDocente> {
  String dropdownValue = Docentes.first;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const ConTxT4(
                w: 0.3,
                h: 0.12,
                text: 'A S I G N A R  D O C E N T E',
                minL: 22,
                maxL: 42),
            content: SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.2,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  var tamanioAlert = constraints;
                  return Column(
                    children: [
                      Row(
                        children: [
                          ConTxT5(
                              w: tamanioAlert.maxWidth * 0.35,
                              h: tamanioAlert.maxHeight * 0.15,
                              text: 'Docente',
                              minL: 14,
                              maxL: 22),
                          DropdownMenu<String>(
                            initialSelection: Docentes.first,
                            onSelected: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            dropdownMenuEntries:
                                Docentes.map<DropdownMenuEntry<String>>(
                                    (String value) {
                              return DropdownMenuEntry<String>(
                                  value: value, label: value);
                            }).toList(),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: tamanioAlert.maxHeight * 0.2),
                        child: Btn3(
                          texto: 'ASIGNAR',
                          width: tamanioAlert.maxWidth * 0.25,
                          heigth: tamanioAlert.maxHeight * 0.3,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
      icon: Icon(
        Icons.person,
        color: iconoDocente,
      ),
    );
  }
}

class BtnIconoDocenteEditar extends StatelessWidget {
  final op;
  const BtnIconoDocenteEditar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.edit_square,
        color: iconoDocenteEditar,
      ),
    );
  }
}
