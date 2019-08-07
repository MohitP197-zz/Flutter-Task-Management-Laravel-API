import 'package:flutter/material.dart';
import 'package:taskmanagement/pages/projects/individual_project.dart';
import 'package:taskmanagement/pages/projects/projectData.dart';

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

// class Project {
//   final String projectName;
//   final String userId;
//   final String status;
//   final bool isComplete;

//   const Project(this.projectName, this.userId, this.status, this.isComplete);
// }

// var data = <Project>[
//   Project("WhyGoNEpal", "Mohit Paudel", "Completed", true),
//   Project("Ecommerce Website", "Mohit Paudel", "Completed", true),
//   Project("Examsys", "Nishu Roka", "Not-Started", false),
//   Project("Doctor Appointment System", "Ganesh Oli", "On-Going", false),
// ];

class _ProjectPageState extends State<ProjectPage> {
  List projects;
  @override
  void initState() {
    // Fetchng details from projectDetails list
    projects = projectDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Project project) => ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.white24))),
            child: Icon(Icons.bookmark, color: Colors.white),
          ),
          title: Text(
            project.projectName,
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
                        valueColor:
                            AlwaysStoppedAnimation(_determineColor(project))),
                  )),
              Expanded(
                flex: 4,
                child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(project.userId,
                        style: TextStyle(color: Colors.white))),
              )
            ],
          ),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        IndividualProjectPage(project: project)));
          },
        );
    Card makeCard(Project project) => Card(
          elevation: 8.0,
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            // decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
            child: makeListTile(project),
          ),
        );

    final bodyContent = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: projects.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(projects[index]);
        },
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Projects'),
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        centerTitle: true,
      ),
      body: bodyContent,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          isExtended: true,
          icon: Icon(Icons.add),
          label: Text('New Project', textScaleFactor: 1.0),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  Color _determineColor(project) {
    if (project.status == "Completed") {
      return Colors.green;
    } else if (project.status == "Not-Started") {
      return Colors.red;
    } else if (project.status == "On-Going") {
      return Colors.orange;
    }
  }
}
