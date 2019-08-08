import 'package:flutter/material.dart';
import 'package:taskmanagement/pages/staffs/staffData.dart';
// import 'package:taskmanagement/utils/routes/routes.dart';

import 'individual_staff_details.dart';

class StaffPage extends StatefulWidget {
  @override
  _StaffPageState createState() => _StaffPageState();
}

// var staffData = <Staff>[
//   Staff("1", "Saroj Sapkota", "a@a.com", "45", ""),
//   Staff("2", "Rajat Shrestha", "a@a.com", "35", ""),
//   Staff("3", "Pushparaj Poudel", "a@a.com", "12", ""),
//   Staff("4", "Ganesh Oli", "a@a.com", "19", ""),
// ];

class _StaffPageState extends State<StaffPage> {
  List staffs;
  @override
  void initState() {
    staffs = staffDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Staff staff) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text(
            staff.staffName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

          subtitle: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    // tag: 'hero',
                    child: LinearProgressIndicator(
                        backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                        value: 10,
                        valueColor: AlwaysStoppedAnimation(Colors.green)),
                  )),
              Expanded(
                flex: 4,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(staff.completedProjects,
                        style: TextStyle(color: Colors.white))),
              )
            ],
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            _getStaffDetails(context, staff);
            // _getStaffDetails(context, staffData.id);
          },
        );
    Card makeCard(Staff staff) => Card(
          elevation: 8.0,
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            // decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(staff),
          ),
        );

    final bodyContent = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: staffs.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(staffs[index]);
        },
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Staffs'),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        centerTitle: true,
      ),
      body: bodyContent,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          isExtended: true,
          icon: Icon(Icons.add),
          label: Text('New Staff', textScaleFactor: 1.0),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  Future _getStaffDetails(BuildContext context, Staff staff) {
    return Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => IndividualStaffDetails(staff: staff)));
  }
}
