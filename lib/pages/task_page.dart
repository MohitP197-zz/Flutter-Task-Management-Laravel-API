import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

// Task object with some required properties
class Task {
  final String task;
  final bool isComplete;
  const Task(this.task, this.isComplete);
}

// Dummy list for task
final List<Task> _taskList = [
  new Task("Call Mohit tomorrow", false),
  new Task("Upload project to github", false),
  new Task("Watch Naruto Shippuden", true),
  new Task("Build some apps on flutter", true),
];

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: _taskList.length,
      itemBuilder: (context, index) {
        return _taskList[index].isComplete
            ? _taskComplete(_taskList[index].task)
            : _taskIncomplete(_taskList[index].task);
      },
    );
  }

  Widget _taskIncomplete(String task) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 24.0),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.radio_button_unchecked,
            color: Theme.of(context).accentColor,
            size: 20,
          ),
          SizedBox(
            width: 28,
          ),
          Text(task)
        ],
      ),
    );
  }

  Widget _taskComplete(String task) {
    return Container(
      foregroundDecoration: BoxDecoration(color: Color(0x60FDFDFD)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 24.0),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.radio_button_checked,
              color: Theme.of(context).accentColor,
              size: 20,
            ),
            SizedBox(
              width: 28,
            ),
            Text(task)
          ],
        ),
      ),
    );
  }
}
