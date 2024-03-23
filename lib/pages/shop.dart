import 'dart:async';
import 'package:flutter/material.dart';
import 'package:growise/pages/image.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  late ScrollController _scrollController;
  late Timer _timer;
  double _currentScrollOffset = 2.0;
  final double _scrollSpeed = 2.0; // Initial scroll speed

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      _scrollController.jumpTo(_currentScrollOffset);
      _currentScrollOffset += _scrollSpeed;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/wall.jpg',
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), // White text color
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search products...',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(
                            255, 0, 0, 0), // Light grey hint color
                      ),
                      filled: true,
                      fillColor: Colors.grey[100], // Light grey background
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                    onChanged: (text) {
                      // Implement your search functionality here
                    },
                  ),
                ),
                SizedBox(
                  height: 150, // Adjust the height as needed
                  child: Container(
                    color: const Color.fromARGB(112, 238, 238, 238),
                    child: ListView.builder(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length * 1000,
                      itemBuilder: (context, index) {
                        final int imageIndex = index % images.length;
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            images[imageIndex],
                            width: 200,
                            height: 300,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Featured Categories',
                    style: TextStyle(
                      backgroundColor: Color.fromARGB(73, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                          255, 255, 254, 254), // White text color
                    ),
                  ),
                ),
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    for (int i = 0; i < images.length; i++)
                      CategoryWidget(
                        category: categories[i],
                        image: images[i],
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.grey[200], // Grey background color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Navigate to home screen
              },
            ),
            SizedBox(
              // Larger cart button
              height: 60,
              width: 60,
              child: FloatingActionButton(
                elevation: 2.0,
                shape: const CircleBorder(eccentricity: 1.0),

                backgroundColor: const Color.fromARGB(13, 0, 0, 0),
                // Black background color
                onPressed: () {
                  // Navigate to cart screen
                },
                child: const Icon(Icons.shopping_basket,
                    size: 40, color: Color.fromARGB(255, 40, 150, 0)),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart_checkout),
              onPressed: () {
                // Open chatbot
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String category;
  final String image;

  const CategoryWidget({Key? key, required this.category, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 200,
            height: 60,
          ),
          Text(
            category,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white, // White text color
            ),
          ),
        ],
      ),
    );
  }
}
