import 'package:flutter/material.dart';
import 'iteminfo.dart';

class Cart {
  // Singleton Cart class
  static final Cart _instance = Cart._internal();

  factory Cart() {
    return _instance;
  }

  Cart._internal();

  final List<Item> _cartItems = [];

  List<Item> get cartItems => _cartItems;

  void addToCart(Item item) {
    _cartItems.add(item);
  }
}

class Products extends StatefulWidget {
  final String category;
  final List<Item> items;

  const Products({Key? key, required this.category, required this.items})
      : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final Cart _cart = Cart(); // Use the Cart singleton

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage1(cartItems: _cart.cartItems),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          final item = widget.items[index];
          return Container(
            color: Colors.grey[300],
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              children: [
                Image.asset(
                  item.imageAsset,
                  width: 400,
                  height: 300,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 10),
                ListTile(
                  title: Text(item.info),
                  subtitle: Text(item.price),
                  trailing: TextButton(
                    onPressed: () {
                      _cart.addToCart(
                          item); // Add item to cart using the singleton
                    },
                    child: const Icon(Icons.add_shopping_cart),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CartPage1 extends StatelessWidget {
  final List<Item> cartItems;

  const CartPage1({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever_outlined),
            onPressed: () {
              // Clear all items in the cart
              cartItems.clear();
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return Dismissible(
            key: Key(item.info),
            onDismissed: (direction) {
              // Remove the dismissed item from the cart
              cartItems.removeAt(index);

              // Show a snackbar to undo the deletion
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Item removed from the cart'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Add the item back to the cart
                      cartItems.insert(index, item);
                    },
                  ),
                ),
              );
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.delete_forever_outlined,
                  color: Colors.white),
            ),
            child: Container(
              color: Colors.grey[300],
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Column(
                children: [
                  Image.asset(
                    item.imageAsset,
                    width: 250,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                    title: Text(item.info),
                    subtitle: Text(item.price),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
