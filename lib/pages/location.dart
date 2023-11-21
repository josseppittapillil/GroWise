import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class YourPage extends StatelessWidget {
  const YourPage({Key? key});

  @override
  Widget build(BuildContext context) {
    const double fem = 1.0; // Replace with your actual scaling factor
    const double ffem = 1.0; // Replace with your actual scaling factor

    return SizedBox(
      width: double.infinity,
      height: 812 * fem, // Adjust the height accordingly
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: const CameraPosition(
                target:
                    LatLng(37.7749, -122.4194), // Set the initial map location
                zoom: 10.0,
              ),
              markers: {
                const Marker(
                  markerId: MarkerId('Your Location'),
                  position:
                      LatLng(37.7749, -122.4194), // Set the marker position
                  infoWindow: InfoWindow(title: 'Your Location'),
                ),
              },
            ),
            Positioned(
              left: 23 * fem,
              top: 718 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: SizedBox(
                  width: 330 * fem,
                  height: 56 * fem,
                  child: Container(
                    color: Color(0xff02841e),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: const Center(
                      child: Text(
                        'Choose Your Location',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20 * fem,
              top: 63 * fem,
              child: Align(
                child: SizedBox(
                  width: 41 * fem,
                  height: 41 * fem,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Image.network(
                      '[Image url]',
                      width: 41 * fem,
                      height: 41 * fem,
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
