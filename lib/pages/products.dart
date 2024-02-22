import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final String category;

  const Products({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

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
                'assets/images/back.png',
                width: 35 * fem,
                height: 35 * fem,
              ),
            ),
          ),
        ),
      ),
      body: ProductsList(category: category),
    );
  }
}

class ProductsList extends StatelessWidget {
  final String category;

  const ProductsList({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Logic to fetch products based on the selected category
    // You can implement this logic as per your requirements
    List<String> products = fetchProductsForCategory(category);

    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(products[index]),
          // Add more details or customization as needed for each product
        );
      },
    );
  }

  // Dummy function, replace it with your actual logic to fetch products
  List<String> fetchProductsForCategory(String category) {
    // Implement your logic here to fetch products based on the category
    // For demonstration, returning dummy data
    return ['Product 1', 'Product 2', 'Product 3'];
  }
}
