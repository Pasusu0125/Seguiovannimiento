import 'package:seguimiento_docente/sprint3/models/materia_model.dart';

List<Materia> materiasDisponibles = [
  // Initialize available products
  Materia(
    nombre: 'APOI',
    descrpcion: 'Introduccion a la programacion',
    nCreditos: 3,
    semestre: 1,
  ),
  Materia(
    nombre: 'Introduccion a la ingenieria',
    descrpcion: 'Materia introductoria',
    nCreditos: 2,
    semestre: 1,
  ),
  Materia(
    nombre: 'Logica de Programacón',
    descrpcion: 'Fundamentos',
    nCreditos: 2,
    semestre: 1,
  ),
  Materia(
    nombre: 'APOII',
    descrpcion: 'Programacion en Java',
    nCreditos: 3,
    semestre: 2,
  ),
  Materia(
    nombre: 'Calculo diferencial',
    descrpcion: 'Derivadas por montones',
    nCreditos: 2,
    semestre: 2,
  ),
  Materia(
    nombre: 'Matematicas II',
    descrpcion: 'Matematicas avanzadas pero no tan avanzadas',
    nCreditos: 3,
    semestre: 2,
  ),
  Materia(
    nombre: 'APOIII',
    descrpcion: 'Materia que repitio Daniela',
    nCreditos: 3,
    semestre: 3,
  ),
  Materia(
    nombre: 'Electronica',
    descrpcion: 'Cablecitos',
    nCreditos: 2,
    semestre: 1,
  ),
  Materia(
    nombre: 'Seminario programacion',
    descrpcion: 'Clases en vivo',
    nCreditos: 3,
    semestre: 1,
  ),
];

List<Materia> materiasSeleccionadas = []; // Lista de materias seleccionadas
bool canAddMateria =
    false; // Estado del botón de agregar (true: habilitado, false: deshabilitado)

