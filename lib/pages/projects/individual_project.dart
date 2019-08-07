import 'package:flutter/material.dart';
import 'package:taskmanagement/pages/projects/projectData.dart';
import 'package:taskmanagement/utils/customized/customized.dart';

class IndividualProjectPage extends StatelessWidget {
  final Project project;
  IndividualProjectPage({Key key, this.project}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final levelIndicator = Container(
    //   child: Container(
    //     child: LinearProgressIndicator(
    //         backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
    //         value: 10,
    //         valueColor: AlwaysStoppedAnimation(Colors.green)),
    //   ),
    // );

    final projectStatus = Container(
        padding: const EdgeInsets.all(7.0),
        decoration: new BoxDecoration(
            border: new Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(5.0)),
        // padding: const EdgeInsets.all(7.0),
        // decoration: new BoxDecoration(
        // border: new Border.all(color: Colors.white),
        // ),
        // child: Text(project.status),
        child: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(project.status,
                style: TextStyle(
                  color: determineColor(project),
                )))
        // child: Text(

        // ),
        );

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 50.0),
        Icon(
          Icons.bookmark,
          color: Colors.white,
          size: 40.0,
        ),
        Container(
          width: 90.0,
          child: new Divider(color: Colors.green),
        ),
        SizedBox(height: 10.0),
        Text(
          project.projectName,
          style: TextStyle(color: Colors.white, fontSize: 22.0),
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
                flex: 6,
                child: Padding(
                    padding: EdgeInsets.only(left: 1.0),
                    child: Text(
                      project.userId,
                      style: TextStyle(color: Colors.red,fontSize: 17),
                    ))),
            Expanded(flex: 3, child: projectStatus)
          ],
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        // Container(
        //     padding: EdgeInsets.only(left: 10.0),
        //     height: MediaQuery.of(context).size.height * 0.5,
        //     decoration: new BoxDecoration(
        //       image: new DecorationImage(
        //         image: new AssetImage("drive-steering-wheel.jpg"),
        //         fit: BoxFit.cover,
        //       ),
        //     )),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.all(40.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 60.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        )
      ],
    );

    final bottomContentText = Text(
      project.description,
      style: TextStyle(fontSize: 18.0),
    );
    // final readButton = Container(
    //     padding: EdgeInsets.symmetric(vertical: 16.0),
    //     width: MediaQuery.of(context).size.width,
    //     child: RaisedButton(
    //       onPressed: () => {},
    //       color: Color.fromRGBO(58, 66, 86, 1.0),
    //       child:
    //           Text("TAKE THIS LESSON", style: TextStyle(color: Colors.white)),
    //     ));
    final bottomContent = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(40.0),
      child: Center(
        child: Column(
          children: <Widget>[bottomContentText],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}
