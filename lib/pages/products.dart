import 'package:flutter/material.dart';
import 'package:growwise/pages/iteminfo.dart';

class Products extends StatelessWidget {
  final String category;
  final List<Item> items;

  const Products({Key? key, required this.category, required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97; // Adjusted font factor

    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(60 * fem), // Set the height of the app bar
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0, // No shadow
          centerTitle: true,
          title: Text(
            category, // Display the selected category
            style: TextStyle(
              fontFamily: 'Urbanist',
              fontSize: 20 * ffem,
              fontWeight: FontWeight.w600,
              color: const Color(0xff02841e),
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context); // Navigate back to the previous screen
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(16 * fem, 0 * fem, 0 * fem, 0 * fem),
              width: 35 * fem,
              height: 35 * fem,
              child: Image.asset(
                'assets/images/back1.png',
                width: 35 * fem,
                height: 35 * fem,
              ),
            ),
          ),
        ),
      ),
      body: ProductsList(
        items: items,
        fem: fem,
        ffem: ffem,
      ), // Pass fem and ffem to ProductsList
    );
  }
}

class ProductsList extends StatelessWidget {
  final List<Item> items;
  final double fem; // Add fem variable
  final double ffem; // Add ffem variable

  const ProductsList(
      {Key? key, required this.items, required this.fem, required this.ffem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(16 * fem),
          padding: EdgeInsets.all(16 * fem),
          decoration: BoxDecoration(
            color: Colors.grey[200], // Grey background color
            borderRadius:
                BorderRadius.circular(20 * fem), // Adjusted border radius
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                items[index].imageAsset,
                width: double.infinity,
                height: 150 * fem, // Adjusted height
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10 * fem), // Add some spacing
              Text(
                items[index].info,
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 18 * ffem,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff000000),
                ),
              ),
              SizedBox(height: 5 * fem), // Add some spacing
              Text(
                items[index].price,
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
