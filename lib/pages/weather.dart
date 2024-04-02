import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  _WeatherWidgetState createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  late String location;
  late String weatherCondition;
  late double temperature;
  late String iconUrl;
  late bool isDay;
  late String localtime;
  late double windSpeed;
  late int humidity;
  late double uvIndex;
  late double pressure;
  late double precipitation;
  late int cloudCover;
  double lat = 0.0;
  double long = 0.0;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    const apiKey = 'f2957dcefa844bf7a83152148240204';
    const apiUrl =
        'http://api.weatherapi.com/v1/current.json?key=$apiKey&q=9.531650,76.820450&aqi=no';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        setState(() {
          location = data['location']['name'];
          weatherCondition = data['current']['condition']['text'];
          temperature = data['current']['temp_c'];
          iconUrl = 'https:' + data['current']['condition']['icon'];
          isDay = data['current']['is_day'] == 1;
          localtime = data['location']['localtime'];
          windSpeed = data['current']['wind_kph'];
          humidity = data['current']['humidity'];
          uvIndex = data['current']['uv'];
          pressure = data['current']['pressure_in'];
          precipitation = data['current']['precip_mm'];
          cloudCover = data['current']['cloud'];
        });
      } else {
        // Handle error, show error message or retry logic
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      // Handle network or other errors
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 400.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            location,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            '$temperature°C, $weatherCondition',
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Image.network(iconUrl, width: 64.0, height: 64.0),
          const SizedBox(height: 8.0),
          Text(
            isDay ? 'Day' : 'Night',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Local Time: $localtime',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Wind Speed: $windSpeed kph',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Humidity: $humidity%',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'UV Index: $uvIndex',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Pressure: $pressure inHg',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Precipitation: $precipitation mm',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Cloud Cover: $cloudCover%',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Weather Widget'),
      ),
      body: const Center(
        child: WeatherWidget(),
      ),
    ),
  ));
}
