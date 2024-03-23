import 'package:flutter/material.dart';
import 'package:growise/pages/iteminfo.dart';

class CartPage extends StatelessWidget {
  final List<Item> selectedItems;

  const CartPage({Key? key, required this.selectedItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Item> cartItems =
        selectedItems.where((item) => item.addedToCart).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              cartItems[index].imageAsset,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(cartItems[index].info),
            subtitle: Text(cartItems[index].price),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Proceed to checkout functionality
                  _proceedToCheckout(context);
                },
                child: const Text('Proceed to Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _proceedToCheckout(BuildContext context) {
    // Implement your logic to proceed to checkout
    // For example, you can navigate to a checkout page
    // Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage(selectedItems)));
  }
}
