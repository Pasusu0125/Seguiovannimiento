import 'package:flutter/material.dart';
import 'package:seguimiento_docente/pages/page_Materias.dart';
import 'package:seguimiento_docente/pages_PC/welcome_Page.dart';
import 'package:seguimiento_docente/structure/atoms/responsive_conditionals.dart';

const String routeWelcomeMB = "/lib/pages_MB/welcome_Page_MB.dart";
const String routePageMaterias = "/lib/pages_MB/page_materias.dart";
const String routeWelcomePC = "/lib/pages_PC/welcome_Page_PC.dart";

class MyRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/lib/pages_PC/welcome_Page_PC.dart":
        return MaterialPageRoute(builder: (_) => const Welcome_Page());
      case "/lib/pages_MB/page_materias.dart":
        return MaterialPageRoute(builder: (_) => const PageMaterias());
      default:
        return MaterialPageRoute(
          builder: (_) => const Responsive(
            desktop: Welcome_Page(),
            mobile: Welcome_Page(),
            tablet: Welcome_Page(),
          ),
        );
    }
  }
}
