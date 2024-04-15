import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AppointmentBookingPage extends StatelessWidget {
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _contactDetailsController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();

  Future<void> _submitForm(BuildContext context) async {
    final name = _nameController.text;
    final address = _addressController.text;
    final contactDetails = _contactDetailsController.text;
    final date = _dateController.text;
    final time = _timeController.text;

    if (name.isNotEmpty &&
        address.isNotEmpty &&
        contactDetails.isNotEmpty &&
        date.isNotEmpty &&
        time.isNotEmpty) {
      await FirebaseFirestore.instance.collection('client').add({
        'name': name,
        'address': address,
        'contact_details': contactDetails,
        'date': date,
        'time': time,
      });

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Booking Successful'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Appointment',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(labelText: 'Address'),
              ),
              GestureDetector(
                onTap: () async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(Duration(days: 365)),
                  );
                  if (picked != null) {
                    _dateController.text =
                        '${picked.day}/${picked.month}/${picked.year}';
                  }
                },
                child: AbsorbPointer(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Date'),
                    controller: _dateController,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final picked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (picked != null) {
                    _timeController.text = '${picked.hour}:${picked.minute}';
                  }
                },
                child: AbsorbPointer(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Time'),
                    controller: _timeController,
                  ),
                ),
              ),
              TextFormField(
                controller: _contactDetailsController,
                decoration: const InputDecoration(labelText: 'Contact Details'),
                keyboardType: TextInputType.phone,
                maxLength: 10,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () => _submitForm(context),
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                child: const Text(
                  'Book Now',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
