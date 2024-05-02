import 'package:flutter/material.dart';
import 'package:seguimiento_docente/common/paleta.dart';

final temaApp = ThemeData(
    appBarTheme: AppBarTheme(
      foregroundColor: colorIcono1,
      backgroundColor: verde,
      centerTitle: true,
      elevation: 4,
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: 'Extra',
          color: letras,
          fontSize: 42),
    ),
    textTheme: TextTheme(
      //SAPO
      titleLarge: TextStyle(
          fontWeight: FontWeight.w600,
          color: iconoDrawer,
          fontFamily: 'Extra',
          fontSize: 60),
      titleMedium: TextStyle(
          fontWeight: FontWeight.w600,
          color: letraTextField1,
          fontFamily: 'Merri'),
      titleSmall: TextStyle(
          fontWeight: FontWeight.w600, color: letraDrawer, fontFamily: 'Merri'),
      displaySmall: TextStyle(
          fontWeight: FontWeight.w500, color: letraDrawer, fontFamily: 'Merri'),
      displayLarge: TextStyle(
          fontWeight: FontWeight.w600,
          color: letraTitulo1,
          fontFamily: 'Extra',
          fontSize: 160),
      displayMedium: TextStyle(
          fontWeight: FontWeight.w600,
          color: blanco,
          fontFamily: 'Semi',
          fontSize: 14),
    ),
    dataTableTheme: DataTableThemeData(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      dataRowColor: MaterialStatePropertyAll(verde),
      headingRowColor: MaterialStatePropertyAll(verde),
      headingTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ));

final moreStyle = ThemeData(
  textTheme: TextTheme(
    bodySmall: TextStyle(
        fontWeight: FontWeight.w600,
        color: letraTextField1,
        fontSize: 60,
        fontFamily: 'Merri'),
  ),
);
