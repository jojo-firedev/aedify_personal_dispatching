import 'package:aedify_personal_dispatching/presentation/assignment_list/assignment_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AssignmentListPage());
  }
}
