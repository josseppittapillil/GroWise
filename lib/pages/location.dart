import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'iteminfo.dart';
import 'products.dart';
import 'prompts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'home.dart';
import 'package:http/http.dart' as http;

String loc = "";
String pla = "123";
String selectedCategory = "";
List<Item> categoryInfo = List.empty();
bool _showTextField = true;

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<Maps> {
  late MapController mapController;
  List<Marker> markers = [];

  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  @override
  Widget build(BuildContext context) {
    return MyHomePage(mapController: mapController, markers: markers);
  }
}

class MyHomePage extends StatelessWidget {
  final MapController mapController;
  final List<Marker> markers;

  const MyHomePage(
      {Key? key, required this.mapController, required this.markers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        mapController: mapController,
        options: const MapOptions(
          initialCenter: LatLng(51.509364, -0.128928),
          initialZoom: 9.2,
        ),
        children: [
          TileLayer(
            urlTemplate:
                'https://api.mapbox.com/styles/v1/growise/clszugmpi00fg01pi8e216y6q/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZ3Jvd2lzZSIsImEiOiJjbHN6cHBsa2QwbmJxMnFwMnd3MXg1ZXV1In0.dJJDaDztb7-YCimEnmzGEg',
            userAgentPackageName: 'com.example.app',
            additionalOptions: const {
              'accessToken':
                  'pk.eyJ1IjoiZ3Jvd2lzZSIsImEiOiJjbHN6cHBsa2QwbmJxMnFwMnd3MXg1ZXV1In0.dJJDaDztb7-YCimEnmzGEg',
              'id': 'mapbox.mapbox-streets-v8'
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff02841e),
        onPressed: () {
          _getLocation(context);
        },
        child: const Icon(
          Icons.location_on,
          color: Colors.white,
        ),
      ),
    );
  }

  void _getLocation(BuildContext context) async {
    Location location = Location();
    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    locationData = await location.getLocation();
    LatLng currentLocation =
        LatLng(locationData.latitude!, locationData.longitude!);

    mapController.move(currentLocation, 15.0);

    // Show popup notification with latitude and longitude
    Fluttertoast.showToast(
      msg:
          "Latitude: ${currentLocation.latitude}, Longitude: ${currentLocation.longitude}",
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
    );
    loc = "${currentLocation.latitude},${currentLocation.longitude}";

    // Add a marker at the current location
    markers.add(
      Marker(
        width: 80.0,
        height: 80.0,
        point: currentLocation,
        child: const Icon(
          Icons.location_on,
          color: Colors.green, // Set the color of the pointer to green
          size: 40.0,
        ),
      ),
    );

    // Update the UI to display the marker
    mapController.move(currentLocation, mapController.camera.zoom);

    // Show success dialog with "Next" button
    // ignore: use_build_context_synchronously
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Location Retrieved"),
          actions: [
            TextButton(
              onPressed: () {
                // Navigate to the next page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()),
                );
              },
              child: const Text("Next"),
            ),
          ],
        );
      },
    );
  }
}

class WeatherInfoWidget extends StatefulWidget {
  const WeatherInfoWidget({Key? key}) : super(key: key);

  @override
  _WeatherInfoWidgetState createState() => _WeatherInfoWidgetState();
}

class _WeatherInfoWidgetState extends State<WeatherInfoWidget> {
  late String location = '';
  late String weatherCondition = '';
  late double temperature = 0.0;
  late String localtime = '';
  late double windSpeed = 0.0;
  late String iconUrl = '';
  bool isLoading = true; // Indicates whether data is being loaded

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    const apiKey = 'f2957dcefa844bf7a83152148240204';
    var apiUrl =
        'http://api.weatherapi.com/v1/current.json?key=$apiKey&q=$loc&aqi=no';

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        setState(() {
          location = data['location']['name'];
          if (kDebugMode) {
            print("Location retrieved: $location");
          }
          weatherCondition = data['current']['condition']['text'];
          temperature = data['current']['temp_c'];
          localtime = data['location']['localtime'];
          windSpeed = data['current']['wind_kph'];
          iconUrl = 'https:' + data['current']['condition']['icon'];
          isLoading = false;
          pla = location;
          if (kDebugMode) {
            print("confirmation: $pla");
          } // Data loaded successfully
        });
      } else {
        // Handle error, show error message or retry logic
        if (kDebugMode) {
          print('Error: ${response.statusCode}');
        }
        setState(() {
          isLoading = false; // Error occurred while fetching data
        });
      }
    } catch (e) {
      // Handle network or other errors
      if (kDebugMode) {
        print('Error: $e');
      }
      setState(() {
        isLoading = false; // Error occurred while fetching data
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 170,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/weather.jpg',
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          location,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          weatherCondition,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          '$temperature°C',
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          localtime,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Image.network(
                          iconUrl,
                          width: 39,
                        )
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class AiBotScreen extends StatefulWidget {
  const AiBotScreen({Key? key}) : super(key: key);

  @override
  _AiBotScreenState createState() => _AiBotScreenState();
}

class _AiBotScreenState extends State<AiBotScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<ChatMessage> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'GroWise Bot',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.chat, color: Colors.black),
            onPressed: () {
              // Handle chat icon press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.black,
              child: ListView.builder(
                itemCount: _messages.length,
                reverse: true,
                itemBuilder: (context, index) {
                  return _messages[index];
                },
              ),
            ),
          ),
          _buildMessageBar(),
        ],
      ),
    );
  }

  Widget _buildMessageBar() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.white,
      child: _showTextField
          ? Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _messageController,
                        decoration: const InputDecoration(
                          hintText: 'Type a message...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {
                        _sendMessage();
                      },
                    ),
                  ],
                ),
                if (_messages.isNotEmpty &&
                    _messages.first.text.contains('Redirect to Marketplace?'))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          _addResponse(
                              "Exited Marketplace...\nIs there anything else I can help you with?");
                          _handleRedirection('YES');
                        },
                        child: const Text('YES'),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          _handleRedirection('NO');
                        },
                        child: const Text('NO'),
                      ),
                    ],
                  ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _handleRedirection('YES');
                  },
                  child: const Text('YES'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    _handleRedirection('NO');
                  },
                  child: const Text('NO'),
                ),
              ],
            ),
    );
  }

  void _sendMessage() async {
    String message = _messageController.text.trim();
    String location = pla;
    if (kDebugMode) {
      print("ai loc: $location");
    } // Replace with your location retrieval logic

    if (message.isNotEmpty) {
      setState(() {
        _messages.insert(0, ChatMessage(text: message, isUser: true));
        _messageController.clear();
      });

      if (_isGreeting(message)) {
        String response =
            "Hello, I am your personal agricultural assistant. How may I assist you today?";
        _addResponse(response);
      } else if (_isAgricultureQuery(message)) {
        if (message.toLowerCase().contains("recommend") &&
            message.toLowerCase().contains("crops")) {
          if (kDebugMode) {
            print("Location retrieved: $location");
          }
          if (location.isNotEmpty) {
            message += " in $location"; // Append location to the query
            if (kDebugMode) {
              print("Final query with location: $message");
            }
          }
          String aiResponse = await getAIResponse(message);
          _addResponse(aiResponse);
          // Append location to the query
        } else if ((message.toLowerCase().contains("suggest") ||
                message.toLowerCase().contains("recommend")) &&
            categorizedItems.keys.any(
                (key) => message.toLowerCase().contains(key.toLowerCase()))) {
          selectedCategory = categorizedItems.keys.firstWhere(
              (key) => message.toLowerCase().contains(key.toLowerCase()));

          // Build the response with top 4 items in the selected category
          categoryInfo = categorizedItems[selectedCategory]!;
          String categoryInfo1 = categorizedItems[selectedCategory]!
              .sublist(0, 4)
              .map((item) => "${item.info}\n")
              .join();

          // Prompt for redirection
          List<String> categoryInfoLines = categoryInfo1.split('\n');
          List<String> formattedCategoryInfo =
              categoryInfoLines.map((info) => "* $info\t").toList();
          String redirectionPrompt =
              "\nThe Featured \"$selectedCategory\" are:\n${formattedCategoryInfo.join('\n')}\n\nRedirect to Marketplace?";

          _addResponse(redirectionPrompt);
        } else {
          String aiResponse = await getAIResponse(message);
          _addResponse(aiResponse);
        }
      } else {
        String response =
            "This Assistant is Fine-Tuned for your Agricultural Queries and does not have Knowledge beyond the topic.";
        _addResponse(response);
      }
    }
    // Check if the last message is a redirection prompt
  }

  void _handleRedirection(String userResponse) {
    if (userResponse == 'YES') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Products(
            category: selectedCategory,
            items: categoryInfo,
          ),
        ),
      );
    } else if (userResponse == 'NO') {
      _addResponse("Is there anything else I can help you with?");
    }
  }

  bool _isGreeting(String message) {
    for (String greeting in Constants.greetings) {
      if (message.trim().toLowerCase() == greeting) {
        return true;
      }
    }
    return false;
  }

  bool _isAgricultureQuery(String message) {
    for (String keyword in Constants.agricultureKeywords) {
      if (message.toLowerCase().contains(keyword)) {
        return true;
      }
    }
    return false;
  }

  void _addResponse(String text) {
    setState(() {
      _messages.insert(0, ChatMessage(text: text, isUser: false));
    });
  }

  Future<String> getAIResponse(String message) async {
    String url = 'https://api.openai.com/v1/completions';
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer xxx',
    };
    Map<String, dynamic> body = {
      'model': 'gpt-3.5-turbo-instruct', // DialoGPT model
      'prompt': message,
      'max_tokens': 150, // Adjust based on the desired response length
    };

    http.Response response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: json.encode(body),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      return data['choices'][0]['text'].toString();
    } else {
      if (kDebugMode) {
        print('Failed to get AI response: ${response.statusCode}');
      }
      if (kDebugMode) {
        print('Response body: ${response.body}');
      }
      throw Exception('Failed to get AI response');
    }
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isUser;

  const ChatMessage({required this.text, required this.isUser, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      padding: const EdgeInsets.all(8.0),
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(top: 8, right: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  isUser ? Colors.blue : const Color.fromARGB(255, 61, 179, 35),
            ),
          ),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                color: isUser
                    ? const Color.fromARGB(255, 251, 251, 251)
                    : const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
