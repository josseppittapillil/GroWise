import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:growwise/pages/homepage.dart';

class ImageItem {
  final String imagePath;
  final String imageName;

  ImageItem({required this.imagePath, required this.imageName});
}

class HomeScreen extends StatelessWidget {
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
  ];

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wall.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
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
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100.0),
                              border: Border.all(color: Colors.green),
                            ),
                            child: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.search,
                                    color:
                                        Color.fromARGB(255, 0, 204, 31),
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      hintText: 'Search...',
                                      hintStyle: TextStyle(color: Colors.black),
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
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
                      color: const Color.fromARGB(2, 255, 255, 255),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: yourImageList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    yourImageList[index].imagePath,
                                    width: 200,
                                    height: 300,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    color: Colors.black.withOpacity(
                                        0.5), // Adjust opacity and color as needed
                                    child: Text(
                                      yourImageList[index].imageName,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white, // Text color
                                      ),
                                    ),
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
                              builder: (context) => const Homepage(),
                            ),
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
