import 'package:aedify_personal_dispatching/presentation/assignment_list/assignment_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PersonalDispatchingApp());
}

class PersonalDispatchingApp extends StatelessWidget {
  const PersonalDispatchingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AssignmentListPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
