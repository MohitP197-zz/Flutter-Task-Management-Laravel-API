import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class Project {
  final String projectName;
  final String userId;
  final String status;
  final bool isComplete;

  const Project(this.projectName, this.userId, this.status, this.isComplete);
}

var data = <Project>[
  Project("Task Management Application", "Rabina Oli", "Completed", true),
  Project("Ecommerce Website", "Pushparaj Poudel", "Completed", true),
  Project("Examsys", "Rajat Shrestha", "In-Complete", false),
  Project("Doctor Appointment System", "Saroj Sapkota", "Completed", false),
];

class _ProjectPageState extends State<ProjectPage> {
  Widget bodyData() => DataTable(columns: <DataColumn>[
        DataColumn(
            label: Text("Project"),
            numeric: false,
            onSort: (i, b) {},
            tooltip: "Project Name"),
        DataColumn(
            label: Text("User"),
            numeric: false,
            onSort: (i, b) {},
            tooltip: "Assigned User"),
        DataColumn(
            label: Text("Status"),
            numeric: false,
            onSort: (i, b) {},
            tooltip: "Status of the project"),
      ], rows: _dataRow().toList());

  Iterable<DataRow> _dataRow() {
    return data.map((data) => DataRow(cells: [
          DataCell(Text(data.projectName),
              showEditIcon: false, placeholder: false),
          DataCell(Text(data.userId), showEditIcon: false, placeholder: false),
          DataCell(Text(data.status), showEditIcon: false, placeholder: false),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Projects'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: bodyData(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          isExtended: true,
          icon: Icon(Icons.add),
          label: Text('New Project', textScaleFactor: 1.0),
          onPressed: () {}),
    );
  }
}
