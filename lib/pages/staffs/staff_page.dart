import 'package:flutter/material.dart';
import 'package:taskmanagement/pages/staffs/individual_staff_details.dart';

class StaffPage extends StatefulWidget {
  @override
  _StaffPageState createState() => _StaffPageState();
}

class Staff {
  final String id;
  final String staffName;
  final String email;
  final String completedProjects;
  final String icon;

  const Staff(
      this.id, this.staffName, this.email, this.completedProjects, this.icon);
}

var staffData = <Staff>[
  Staff("1", "Saroj Sapkota", "a@a.com", "45", ""),
  Staff("2", "Rajat Shrestha", "a@a.com", "35", ""),
  Staff("3", "Pushparaj Poudel", "a@a.com", "12", ""),
  Staff("4", "Ganesh Oli", "a@a.com", "19", ""),
];

class _StaffPageState extends State<StaffPage> {
  Widget bodyData() => DataTable(columns: <DataColumn>[
        DataColumn(
            label: Text("ID"),
            numeric: false,
            onSort: (i, b) {},
            tooltip: "Staff ID"),
        DataColumn(
            label: Text("Staff"),
            numeric: false,
            onSort: (i, b) {},
            tooltip: "Staff name"),
        DataColumn(
            label: Text("Email"),
            numeric: false,
            onSort: (i, b) {},
            tooltip: "Email of the staff"),
        DataColumn(
            label: Text("Projects"),
            numeric: false,
            onSort: (i, b) {},
            tooltip: "Total projects completed by the user"),
        DataColumn(
            label: Text("Action"),
            numeric: false,
            onSort: (i, b) {},
            tooltip: "Total projects completed by the user"),
      ], rows: _dataRow().toList());

  Iterable<DataRow> _dataRow() {
    return staffData.map((data) => DataRow(cells: [
          DataCell(Text(data.id), showEditIcon: false, placeholder: false),
          DataCell(Text(data.staffName),
              showEditIcon: false, placeholder: false),
          DataCell(Text(data.email), showEditIcon: false, placeholder: false),
          DataCell(Text(data.completedProjects),
              showEditIcon: false, placeholder: false),
          DataCell(Icon(Icons.edit), onTap: _getStaffDetails),
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Staffs'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: bodyData(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          isExtended: true,
          icon: Icon(Icons.supervised_user_circle),
          label: Text('New Staff', textScaleFactor: 1.0),
          onPressed: () {}),
    );
  }

  _getStaffDetails() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => IndividualStaffDetails()));
  }
}
