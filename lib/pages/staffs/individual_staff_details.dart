import 'package:flutter/material.dart';
import 'package:taskmanagement/pages/staffs/individual_staff_info.dart';
import 'package:taskmanagement/pages/staffs/staffData.dart';

const url = 'http://whygonepal.tk';
const email = 'mohit@whygonepal.tk';
const phone = '+977 9777777777';

class IndividualStaffDetails extends StatelessWidget {
  final Staff staff;
  IndividualStaffDetails({Key key, this.staff}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer"),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(staff.image),
              ),
              Text(
                staff.staffName,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Developer',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 30.0,
                  color: Colors.teal[50],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.teal.shade700,
                ),
              ),
              IndividualStaffInfo(
                text: phone,
                icon: Icons.phone,
                onPressed: () {},
              ),
              IndividualStaffInfo(
                text: staff.email,
                icon: Icons.email,
                onPressed: () {},
              ),
              IndividualStaffInfo(
                // text: Text(‘Completed Projects: ${staff.completedProjects}‘),
                // Text("Completed: staff.completedProjects"),
                text: "Completed projects: ${staff.completedProjects}",
                icon: Icons.bookmark,
                onPressed: () {},
              ),
              IndividualStaffInfo(
                text: url,
                icon: Icons.web,
                onPressed: () {},
              ),
              IndividualStaffInfo(
                text: staff.address,
                icon: Icons.location_city,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(58, 70, 86, 1.0),
      // backgroundColor: Colors.lightBlue[400],
    );
  }
}
