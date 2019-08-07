import 'package:flutter/material.dart';
import 'package:taskmanagement/pages/projects/project_page.dart';
// import 'package:taskmanagement/pages/staffs/individual_staff_details.dart';
import 'package:taskmanagement/pages/staffs/staff_page.dart';

const StaffsRoute = "/staffs";
const StaffDetailsRoute = "/staff_details";
const ProjectsRoute = "/projects";
const ProjectDetailsRoute = "/project_details";

RouteFactory routes() {
  return (settings) {
    final Map<String, dynamic> arguments = settings.arguments;
    Widget screen;
    switch (settings.name) {
      case StaffsRoute:
        screen = StaffPage();
        break;
      case StaffDetailsRoute:
        screen = StaffPage();
        break;
      case ProjectsRoute:
        screen = ProjectPage();
        break;
      case ProjectDetailsRoute:
        screen = StaffPage();
        break;
      default:
        return null;
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}
