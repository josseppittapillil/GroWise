import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:location/location.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'home.dart';

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

  MyHomePage({Key? key, required this.mapController, required this.markers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
          /*MarkerLayer(markers: [
              Marker(
                width: 88.0,
                height: 88.0,
                point: LatLng(51.5, -0.09),
                child: 
              )
            ])*/
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getLocation(context);
        },
        child: const Icon(Icons.location_on),
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
    // Update map center to current location
    mapController.move(currentLocation, 15.0);

    // Show popup notification with latitude and longitude
    Fluttertoast.showToast(
      msg:
          "Latitude: ${currentLocation.latitude}, Longitude: ${currentLocation.longitude}",
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
    );

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
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
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
