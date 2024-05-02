class Materia {
  final String nombre;
  final String descrpcion;
  final int nCreditos;
  final int semestre;
  bool isSelected;
  bool isMatriculated;

  Materia({
    required this.nombre,
    required this.descrpcion,
    required this.nCreditos,
    required this.semestre,
    this.isSelected = false,
    this.isMatriculated = false,
  });

  @override
  String toString() {
    return "{Nombre: $nombre, Creditos: $nCreditos, Semestre: $semestre}\n";
  }
}
