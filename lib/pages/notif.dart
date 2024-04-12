import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:credentials_manager/credentials_manager.dart';

import 'homepage.dart';

class AppointmentStatusPage extends StatefulWidget {
  @override
  _AppointmentStatusPageState createState() => _AppointmentStatusPageState();
}

class _AppointmentStatusPageState extends State<AppointmentStatusPage> {
  List<Appointment> appointments = [];

  @override
  void initState() {
    super.initState();
    _loadAppointments();
  }

  Future<void> _loadAppointments() async {
    final credentialsManager = CredentialsManager(
      storageKey: 'storage_key',
      useAndroidEncryptedSharedPreferences: true,
    );

    final savedCredentials = await credentialsManager.getSavedCredentials();
    String? username = savedCredentials.isNotEmpty
        ? savedCredentials.first.loginOrEmail
        : null;

    if (username != null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String?> keys = prefs.getKeys().toList();

      for (String? key in keys) {
        if (key!.startsWith(username)) {
          String appointmentInfo = prefs.getString(key)!;
          if (kDebugMode) {
            print('Raw Appointment Info: $appointmentInfo');
          }
          List<String> infoList = appointmentInfo.split(' - ');

          // Debug print to check the parsed info list
          if (kDebugMode) {
            print('Parsed Info List: $infoList');
          }

          if (infoList.length >= 5) {
            // Parse and format the date
            DateTime dateTime = DateTime.parse(infoList[3]);
            String formattedDate =
                DateFormat('dd/MM/yy').format(dateTime); // Format: dd/mm/yy
            String formattedTime = DateFormat.jm().format(dateTime);

            // Debug print to check the formatted date
            if (kDebugMode) {
              print('Formatted Date: $formattedDate');
              print('Formatted Time: $formattedTime');
            }

            appointments.add(Appointment(
              name: key,
              appointmentType: infoList[0],
              date: formattedDate,
              time: formattedTime,
              status: infoList[4],
            ));
          }
        }
      }
      setState(() {});
    }
  }

  void _cancelAppointment(Appointment appointment) async {
    // Remove data from shared preferences
    final prefs = await SharedPreferences.getInstance();
    final username = appointment.name; // Assuming name is the key
    if (prefs.containsKey(username!)) {
      prefs.remove(username);
    }

    // Remove the appointment from the list
    setState(() {
      appointments.removeWhere((element) => element.name == appointment.name);
    });

    // Show a cancellation confirmation popup
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Booking Cancelled'),
          content: const Text('Your appointment has been cancelled.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate back to BottomNavExample when using the back arrow
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const BottomNavExample(),
          ),
        );
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Appointment Status (${appointments.length})',
            style: const TextStyle(color: Colors.green),
          ),
        ),
        body: ListView.builder(
          itemCount: appointments.length,
          itemBuilder: (context, index) {
            final appointment = appointments[index];
            return Dismissible(
              key: Key(appointment.name!),
              direction: DismissDirection.endToStart,
              background: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20.0),
                color: Colors.red,
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              onDismissed: (direction) {
                _cancelAppointment(appointment);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.green[900]!, // Dark green border color
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Card(
                    elevation: 0,
                    child: ListTile(
                      title: Text(
                        appointment.name!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Text(
                            'Appointment Type: ${appointment.appointmentType}',
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_today,
                                size: 18,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Date: ${appointment.date}',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 36, 59, 163)),
                              ),
                              const SizedBox(width: 16),
                              const Icon(
                                Icons.access_time,
                                size: 18,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Time: ${appointment.time}',
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 36, 59, 163)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Status: Pending Confirmation',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Appointment {
  String? name;
  String appointmentType;
  String date;
  String time;
  String status;

  Appointment({
    required this.name,
    required this.appointmentType,
    required this.date,
    required this.time,
    required this.status,
  });
}
