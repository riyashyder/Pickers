import 'package:flutter/material.dart';

class TimerPickerReference extends StatefulWidget {
  const TimerPickerReference({super.key});

  @override
  State<TimerPickerReference> createState() => _TimerPickerReferenceState();
}

class _TimerPickerReferenceState extends State<TimerPickerReference> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Time Picker Reference"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _selectTime(context);
              },
              child: Text("Choose TIme"),
            ),
            Text(
              "${selectedTime.format(context)}",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if(timeOfDay!=null && timeOfDay!=selectedTime){
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
}
