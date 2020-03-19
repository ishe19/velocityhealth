
import 'package:add_to_calendar/add_to_calendar.dart';
import 'package:flutter/material.dart';



class CalendarHome extends StatefulWidget {
  @override
  _CalendarHomeState createState() => _CalendarHomeState();
}

class _CalendarHomeState extends State<CalendarHome> {
  String title = '';

  int frequency;
  FrequencyType selectedFrequency;
  DateTime startDate;
  DateTime endDate;
  TextEditingController endDateController = TextEditingController();
  bool allDay = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

      return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Schedule Appointment'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Consultor Name:',
                  ),
                  onChanged: (String value) => setState(() {
                    title = value;
                  }),
                ),


                SizedBox(height: 8),
                GestureDetector(
                  onTap: () async {
                    final DateTime picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2015, 8),
                      lastDate: DateTime(2101),
                    );
                    if (picked != null && picked != startDate)
                      setState(() {
                        startDate = picked;
                      });
                  },
                  child: Text(startDate != null ? startDate.toIso8601String() : 'Select  date'),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () async {
                    final DateTime picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2015, 8),
                      lastDate: DateTime(2101),
                    );
                    if (picked != null && picked != endDate)
                      setState(() {
                        endDate = picked;
                      });
                  },
                  child: Text(endDate != null ? endDate.toIso8601String() : 'Select end date'),
                ),

                SizedBox(height: 8),
                Row(
                  children: [
                    Text('All day'),
                    Checkbox(
                      value: allDay,
                      onChanged: (checked) {
                        setState(() {
                          endDate = null;
                          endDateController.clear();
                          allDay = checked;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 8),
                DropdownButton<FrequencyType>(
                  hint: Text("Select frequency"),
                  value: selectedFrequency,
                  onChanged: (value) {
                    setState(() {
                      selectedFrequency = value;
                    });
                  },
                  items: FrequencyType.values.map((frequencyType) {
                    return DropdownMenuItem<FrequencyType>(
                      value: frequencyType,
                      child: Text(frequencyType.toString()),
                    );
                  }).toList(),
                ),
                SizedBox(height: 8),
                RaisedButton(
                  child: const Text('Add to calendar'),
                  onPressed: title.isEmpty || startDate == null
                      ? null
                      : () {
                    return AddToCalendar.addToCalendar(
                      title: title,
                      startTime: startDate,
                      endTime: endDate,
                      isAllDay: allDay,
                      frequency: frequency,
                      frequencyType: selectedFrequency,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      );

  }
}