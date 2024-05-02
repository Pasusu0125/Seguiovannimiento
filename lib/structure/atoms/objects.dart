import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:seguimiento_docente/common/paleta.dart";

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

class BtnIconoDocente extends StatelessWidget {
  final op;
  const BtnIconoDocente({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: op,
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
