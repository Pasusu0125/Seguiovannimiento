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
    return LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 900) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return op;
                },
              );
            },
            icon: Icon(
              Icons.edit_square,
              color: iconoEditar,
              size: MediaQuery.of(context).size.width * 0.02,
            ));
      } else {
        return IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit_square,
              color: iconoEditar,
              size: MediaQuery.of(context).size.width * 0.05,
            ));
      }
    });
  }
}

class BtnIconoEliminar extends StatelessWidget {
  final op;
  const BtnIconoEliminar({super.key, this.op});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (MediaQuery.of(context).size.width >= 900) {
        return IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return op;
                },
              );
            },
            icon: Icon(
              Icons.delete_forever,
              color: iconoEliminar,
              size: MediaQuery.of(context).size.width * 0.02,
            ));
      } else {
        return IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete_forever,
              color: iconoEliminar,
              size: MediaQuery.of(context).size.width * 0.05,
            ));
      }
    });
  }
}
