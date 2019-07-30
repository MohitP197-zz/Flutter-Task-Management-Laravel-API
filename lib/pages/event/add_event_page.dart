import 'package:flutter/material.dart';
import 'package:taskmanagement/widgets/custom_button.dart';
import 'package:taskmanagement/widgets/custom_textfield.dart';

class AddEventPage extends StatefulWidget {
  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  Future _pickDate() async {
    DateTime datepick = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime.now().add(Duration(days: -365)),
        lastDate: new DateTime.now().add(Duration(days: 365)));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
              child: Text(
            "Add new Event",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )),
          SizedBox(
            height: 24,
          ),
          CustomTextField(labelText: 'Enter event name'),
          SizedBox(
            height: 12,
          ),
          CustomTextField(labelText: 'Enter description'),
          SizedBox(
            height: 12,
          ),
          FlatButton(
            padding: EdgeInsets.zero,
            onPressed: _pickDate,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.date_range,
                      color: Theme.of(context).accentColor, size: 30),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Pick a date",
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          _actionButton(context)
        ],
      ),
    );
  }

  Widget _actionButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          buttonText: "Close",
        ),
        CustomButton(
          onPressed: () {},
          buttonText: "Save",
          color: Theme.of(context).accentColor,
          textColor: Colors.white,
        )
      ],
    );
  }
}
