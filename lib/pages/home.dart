//import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:growwise/pages/homepage.dart';
//import 'package:growise/pages/location.dart';

class ImageItem {
  final String imagePath;
  final String imageName;

  ImageItem({required this.imagePath, required this.imageName});
}

class HomeScreen extends StatelessWidget {
  // Example list of ImageItem
  static List<ImageItem> yourImageList = [
    ImageItem(
      imagePath: 'assets/images/cardamom.jpg',
      imageName: 'Cardamom',
    ),
    ImageItem(
      imagePath: 'assets/images/carrots.jpg',
      imageName: 'Carrots',
    ),
    ImageItem(
      imagePath: 'assets/images/coffee.jpg',
      imageName: 'Coffee',
    ),
    ImageItem(
      imagePath: 'assets/images/cucumbers.jpg',
      imageName: 'Cucumber',
    ),
    ImageItem(
      imagePath: 'assets/images/nutmeg.jpg',
      imageName: 'Nutmeg',
    ),
    ImageItem(
      imagePath: 'assets/images/pepper.jpg',
      imageName: 'Pepper',
    ),
    ImageItem(
      imagePath: 'assets/images/tea leaves.jpg',
      imageName: 'Tea Leaves',
    ),
    // Add more items as needed
  ];

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/94a643592025df851fc501ba363fdc41.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            Positioned(
              top: 40.0,
              left: 20.0,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: 20.0,
              right: 20.0,
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(0, 255, 255, 255).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.search,
                            color: Color.fromARGB(255, 0, 204, 31)),
                        const SizedBox(width: 5.0),
                        Expanded(
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: 'Search...',
                              hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.7)),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0)),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50.0),
                    Container(
                      width: double.infinity,
                      color: const Color.fromARGB(21, 253, 253, 253),
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        'CHOOSE YOUR CROP',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 300,
                      color: const Color.fromARGB(7, 255, 255, 255),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: yourImageList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    yourImageList[index].imagePath,
                                    width: 180,
                                    height: 230,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Text(
                                  yourImageList[index].imageName,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: const Color.fromARGB(255, 26, 156, 3),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Homepage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 26, 156, 3),
                          backgroundColor:
                              const Color.fromARGB(255, 251, 251, 251),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 150.0,
                            vertical: 17.0,
                          ),
                        ),
                        child: const Text(
                          'NEXT',
                          style: TextStyle(
                            fontSize: 11.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
