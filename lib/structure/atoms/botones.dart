import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:seguimiento_docente/common/estilos_txt.dart';
import 'package:seguimiento_docente/common/paleta.dart';

class Btn1 extends StatelessWidget {
  final String texto;
  final double width;
  final double heigth;
  final op;
  const Btn1(
      {super.key,
      required this.texto,
      required this.width,
      required this.heigth,
      this.op});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * heigth,
      color: verde,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return op;
          },
        );
      },
      child: AutoSizeText(
        style: temaApp.textTheme.displayMedium,
        texto,
        maxLines: 1,
        maxFontSize: 18,
        minFontSize: 4,
      ),
    );
  }
}

class Btn2 extends StatelessWidget {
  final String texto;
  final double width;
  final double heigth;
  final op;
  const Btn2(
      {super.key,
      required this.texto,
      required this.width,
      required this.heigth,
      this.op});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width,
      height: heigth,
      color: verde,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onPressed: () {
        return op;
      },
      child: AutoSizeText(
        style: temaApp.textTheme.displayMedium,
        texto,
        maxLines: 1,
        maxFontSize: 18,
        minFontSize: 12,
      ),
    );
  }
}

class Btn3 extends StatelessWidget {
  final String texto;
  final double width;
  final double heigth;
  final op;
  const Btn3(
      {super.key,
      required this.texto,
      required this.width,
      required this.heigth,
      this.op});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width,
      height: heigth,
      color: verde,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: AutoSizeText(
        style: temaApp.textTheme.displayMedium,
        texto,
        maxLines: 1,
        maxFontSize: 18,
        minFontSize: 12,
      ),
    );
  }
}
