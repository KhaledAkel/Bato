import 'package:flutter/material.dart';

class SearchFlightsForm extends StatefulWidget {
  @override
  _SearchFlightsFormState createState() => _SearchFlightsFormState();
}

class _SearchFlightsFormState extends State<SearchFlightsForm> {
  final _formKey = GlobalKey<FormState>();
  String? _departure;
  String? _destination;
  DateTime? _departureDate;
  DateTime? _returnDate;
  int _passengers = 1;

  Future<void> _selectDate(BuildContext context, bool isDeparture) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        if (isDeparture) {
          _departureDate = picked;
        } else {
          _returnDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Departure City'),
              items: ['New York', 'Los Angeles', 'Chicago', 'Miami']
                  .map((city) => DropdownMenuItem(value: city, child: Text(city)))
                  .toList(),
              onChanged: (value) => setState(() => _departure = value),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Destination City'),
              items: ['London', 'Paris', 'Tokyo', 'Dubai']
                  .map((city) => DropdownMenuItem(value: city, child: Text(city)))
                  .toList(),
              onChanged: (value) => setState(() => _destination = value),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text(_departureDate == null
                  ? 'Select Departure Date'
                  : 'Departure: ${_departureDate!.toLocal()}'.split(' ')[0]),
              trailing: Icon(Icons.calendar_today),
              onTap: () => _selectDate(context, true),
            ),
            ListTile(
              title: Text(_returnDate == null
                  ? 'Select Return Date'
                  : 'Return: ${_returnDate!.toLocal()}'.split(' ')[0]),
              trailing: Icon(Icons.calendar_today),
              onTap: () => _selectDate(context, false),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(labelText: 'Passengers'),
              keyboardType: TextInputType.number,
              initialValue: '1',
              onChanged: (value) => setState(() => _passengers = int.tryParse(value) ?? 1),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print('Searching flights from $_departure to $_destination');
                }
              },
              child: Text('Search Flights'),
            ),
          ],
        ),
      ),
    );
  }
}
