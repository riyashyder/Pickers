import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  var _datecontroller = TextEditingController();

  DateTime _dateTime = DateTime.now();


  _selectTodoDate(BuildContext context)async{
    var _pickedDate = await showDatePicker(context: context, initialDate: _dateTime, firstDate: DateTime(2000), lastDate: DateTime(2100));
    if(_pickedDate!=null){
      setState(() {
        _dateTime = _pickedDate;
        _datecontroller.text = DateFormat("dd-MM-yyyy").format(_dateTime);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Date Picker Reference'
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _datecontroller,
              decoration: InputDecoration(
                labelText: 'Date',
                hintText: 'Select Date',
                prefixIcon: InkWell(
                  onTap: (){
                    _selectTodoDate(context);
                  },
                  child: Icon(Icons.calendar_today),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
