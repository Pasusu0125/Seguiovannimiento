import 'package:flutter/material.dart';
import 'package:seguimiento_docente/common/estilos_txt.dart';
import 'package:seguimiento_docente/common/paleta.dart';
import 'package:seguimiento_docente/pages/page_Docentes.dart';
import 'package:seguimiento_docente/pages/page_Estudiantes.dart';
import 'package:seguimiento_docente/pages/page_Materias.dart';
import 'package:seguimiento_docente/structure/atoms/contenedor_txt.dart';
import 'package:seguimiento_docente/structure/atoms/objects.dart';
import 'package:seguimiento_docente/structure/atoms/pad_g.dart';
import 'package:auto_size_text/auto_size_text.dart';

class BarraLateral2 extends StatefulWidget {
  const BarraLateral2({super.key});

  @override
  State<BarraLateral2> createState() => _BarraLateral2State();
}

class _BarraLateral2State extends State<BarraLateral2> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Materias',
      style: optionStyle,
    ),
    Text(
      'Index 1: Docentes',
      style: optionStyle,
    ),
    Text(
      'Index 2: Estudiantes',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 350,
        child: LayoutBuilder(
          builder: (context, constraints) {
            var tamanioDrawer = constraints;
            return Drawer(
              backgroundColor: verde,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padd(
                    d: 0,
                    u: tamanioDrawer.maxHeight * 0.1,
                    l: tamanioDrawer.maxWidth * 0.08,
                    r: tamanioDrawer.maxWidth * 0.1,
                    child: Row(
                      children: [
                        Ciculo(w: tamanioDrawer.maxWidth * 0.2),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        ConTxT1(
                            w: tamanioDrawer.maxWidth * 0.3,
                            h: tamanioDrawer.maxHeight * 0.3,
                            text: 'S A P O',
                            estiloTxt: temaApp.textTheme.titleLarge,
                            minL: 30,
                            maxL: 60)
                      ],
                    ),
                  ),
                  Padd(
                      d: 0,
                      u: tamanioDrawer.maxHeight * 0.05,
                      l: tamanioDrawer.maxWidth * 0.15,
                      r: tamanioDrawer.maxWidth * 0.05,
                      child: Column(
                        children: [
                          ListTile(
                            title: Row(
                              children: [
                                Icon(
                                  Icons.menu_book_outlined,
                                  color: iconoDrawer,
                                  size: tamanioDrawer.maxWidth * 0.1,
                                ),
                                ConTxT2(
                                    w: tamanioDrawer.maxWidth * 0.4,
                                    text: '  Materias',
                                    estiloTxt: temaApp.textTheme.titleSmall,
                                    minL: 20,
                                    maxL: 28)
                              ],
                            ),
                            selected: _selectedIndex == 0,
                            onTap: () {
                              // Update the state of the app
                              _onItemTapped(0);
                              // Then close the drawer
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PageMaterias(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                Icon(
                                  Icons.people_rounded,
                                  color: iconoDrawer,
                                  size: tamanioDrawer.maxWidth * 0.1,
                                ),
                                ConTxT2(
                                    w: tamanioDrawer.maxWidth * 0.4,
                                    text: '  Docentes',
                                    estiloTxt: temaApp.textTheme.titleSmall,
                                    minL: 20,
                                    maxL: 28)
                              ],
                            ),
                            selected: _selectedIndex == 1,
                            onTap: () {
                              // Update the state of the app
                              _onItemTapped(1);
                              // Then close the drawer
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PageDocentes(),
                                ),
                              );
                            },
                          ),
                          ListTile(
                            title: Row(
                              children: [
                                Icon(
                                  Icons.people_alt_rounded,
                                  color: iconoDrawer,
                                  size: tamanioDrawer.maxWidth * 0.1,
                                ),
                                ConTxT2(
                                    w: tamanioDrawer.maxWidth * 0.5,
                                    text: '  Estudiantes',
                                    estiloTxt: temaApp.textTheme.titleSmall,
                                    minL: 20,
                                    maxL: 28)
                              ],
                            ),
                            selected: _selectedIndex == 2,
                            onTap: () {
                              // Update the state of the app
                              _onItemTapped(2);
                              // Then close the drawer
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PageEstudiantes(),
                                ),
                              );
                            },
                          ),
                        ],
                      )),
                  Padd(
                    d: tamanioDrawer.maxHeight * 0.1,
                    u: tamanioDrawer.maxHeight * 0.1,
                    l: tamanioDrawer.maxWidth * 0.25,
                    r: tamanioDrawer.maxWidth * 0.25,
                    child: MaterialButton(
                      height: tamanioDrawer.maxHeight * 0.07,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: iconoDrawer,
                      onPressed: () {},
                      child: const AutoSizeText(
                        'Salir',
                        maxFontSize: 28,
                        minFontSize: 22,
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
