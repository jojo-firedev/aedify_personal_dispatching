import 'package:aedify_personal_dispatching/presentation/assignment_list/bloc/assignment_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AssignmentListPage extends StatelessWidget {
  AssignmentListPage({Key? key}) : super(key: key);

  final DateFormat dateFormat = DateFormat('dd.MM.yyyy');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AssignmentListBloc()..add(AssignmentLoadEvent()),
      child: Scaffold(
          appBar: AppBar(title: Text('Aufgaben')),
          body: BlocBuilder<AssignmentListBloc, AssignmentListState>(
            builder: (context, state) {
              if (state is AssignmentListLoaded) {
                return DataTable(
                    columns: [
                      DataColumn(label: Text('Projekt')),
                      DataColumn(label: Text('Zugewiesen an')),
                      DataColumn(label: Text('Rolle')),
                      DataColumn(label: Text('Start')),
                      DataColumn(label: Text('Ende')),
                      DataColumn(label: Text('Status')),
                    ],
                    rows: state.assignments
                        .map((e) => DataRow(cells: [
                              DataCell(Text(e.project.name)),
                              DataCell(Text(e.personnel.name)),
                              DataCell(Text(e.role)),
                              DataCell(Text(dateFormat.format(e.startTime))),
                              DataCell(Text(dateFormat.format(e.endTime))),
                              DataCell(Text(e.status)),
                            ]))
                        .toList());
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
