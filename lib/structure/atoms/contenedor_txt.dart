import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:seguimiento_docente/common/estilos_txt.dart';

class ConTxT1 extends StatelessWidget {
  final double w;
  final double h;
  final String text;
  final estiloTxt;
  final double minL;
  final double maxL;
  const ConTxT1(
      {super.key,
      required this.w,
      required this.h,
      required this.text,
      required this.estiloTxt,
      required this.minL,
      required this.maxL});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: const Color.fromARGB(0, 255, 193, 7),
      width: w,
      height: h,
      child: AutoSizeText(
        text,
        style: estiloTxt,
        maxLines: 1,
        maxFontSize: maxL,
        minFontSize: minL,
      ),
    );
  }
}

class ConTxT2 extends StatelessWidget {
  final double w;

  final String text;
  final estiloTxt;
  final double minL;
  final double maxL;
  const ConTxT2(
      {super.key,
      required this.w,
      required this.text,
      required this.estiloTxt,
      required this.minL,
      required this.maxL});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: const Color.fromARGB(0, 22, 61, 237),
      width: w,
      child: AutoSizeText(
        text,
        style: estiloTxt,
        maxLines: 1,
        maxFontSize: maxL,
        minFontSize: minL,
      ),
    );
  }
}

class ConTxT3 extends StatelessWidget {
  final double w;
  final double h;
  final String text;

  final double minL;
  final double maxL;
  const ConTxT3(
      {super.key,
      required this.w,
      required this.h,
      required this.text,
      required this.minL,
      required this.maxL});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: const Color.fromARGB(0, 255, 193, 7),
      width: MediaQuery.of(context).size.width * w,
      height: MediaQuery.of(context).size.height * h,
      child: AutoSizeText(
        text,
        maxLines: 1,
        maxFontSize: maxL,
        minFontSize: minL,
      ),
    );
  }
}

class ConTxT4 extends StatelessWidget {
  final double w;
  final double h;
  final String text;

  final double minL;
  final double maxL;
  const ConTxT4(
      {super.key,
      required this.w,
      required this.h,
      required this.text,
      required this.minL,
      required this.maxL});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: const Color.fromARGB(0, 255, 193, 7),
      width: MediaQuery.of(context).size.width * w,
      height: MediaQuery.of(context).size.height * h,
      child: AutoSizeText(
        text,
        style: temaApp.textTheme.displayLarge,
        maxLines: 1,
        maxFontSize: maxL,
        minFontSize: minL,
      ),
    );
  }
}

class ConTxT5 extends StatelessWidget {
  final double w;
  final double h;
  final String text;
  final double minL;
  final double maxL;
  const ConTxT5(
      {super.key,
      required this.w,
      required this.h,
      required this.text,
      required this.minL,
      required this.maxL});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      color: const Color.fromARGB(0, 255, 193, 7),
      width: w,
      height: h,
      child: AutoSizeText(
        text,
        style: moreStyle.textTheme.bodySmall,
        maxLines: 1,
        maxFontSize: maxL,
        minFontSize: minL,
      ),
    );
  }
}
