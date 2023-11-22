import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class YourPage extends StatelessWidget {
  const YourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getCurrentLocation(),
      builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // You can show a loading indicator here if needed
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // Handle error
          return const Center(
            child: Text('Error fetching location'),
          );
        } else {
          Position? currentLocation = snapshot.data;
          return _buildUI(currentLocation);
        }
      },
    );
  }

  Future<Position> _getCurrentLocation() async {
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Widget _buildUI(Position? currentLocation) {
    // Your existing UI code here

    return SizedBox(
      width: double.infinity,
      height: 812, // Adjust the height accordingly
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Existing code...
            const Positioned(
              left: 22.5,
              top: 676,
              child: Align(
                child: SizedBox(
                  width: 331,
                  height: 18,
                  child: Text(
                    'Place the pin on Your accurate location on the map',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 23,
              top: 718,
              child: TextButton(
                onPressed: () {
                  // Handle button press, and use currentLocation.latitude
                  // and currentLocation.longitude for location information
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 330,
                  height: 56,
                  child: Container(
                    color: const Color(0xff02841e),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        'Choose Your Location',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 63,
              child: Align(
                child: SizedBox(
                  width: 41,
                  height: 41,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.network(
                      '[Image url]',
                      width: 41,
                      height: 41,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
