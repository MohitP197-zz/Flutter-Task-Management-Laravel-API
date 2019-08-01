import 'package:flutter/material.dart';
import 'package:taskmanagement/pages/staffs/individual_staff_info.dart';

const url = 'http://whygonepal.tk';
const email = 'mohit@whygonepal.tk';
const phone = '+977 9777777777';

class IndividualStaffDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/mohit.jpg'),
            ),
            Text(
              'Mohit Paudel',
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
              text: email,
              icon: Icons.email,
              onPressed: () {},
            ),
            IndividualStaffInfo(
              text: url,
              icon: Icons.web,
              onPressed: () {},
            ),
            IndividualStaffInfo(
              text: 'Kathmandu, Nepal',
              icon: Icons.location_city,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.lightBlue[400],
    );
  }
}
