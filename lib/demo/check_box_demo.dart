import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {

bool _checkboxItemA = false;
int _groupA = 0;
void _handleRadioValueChanged(value){
  setState(() {
   _groupA = value; 
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _checkboxItemA,
                  onChanged: (value) {
                    setState(() {
                     _checkboxItemA = value; 
                    });
                  },
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 0,
                  groupValue: _groupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 1,
                  groupValue: _groupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
