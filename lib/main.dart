import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Store App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FoodItem> cartItems = [];

  void addToCart(FoodItem foodItem) {
    setState(() {
      cartItems.add(foodItem);
    });
  }

  void clearCart() {
    setState(() {
      cartItems.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Store App'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => CartScreen(cartItems, clearCart),
              );
            },
          ),
        ],
      ),
      body: FoodList(onAddToCart: addToCart),
    );
  }
}

class FoodList extends StatelessWidget {
  final Function(FoodItem) onAddToCart;

  FoodList({required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FoodItem(name: 'Pizza', price: 10.99, onAddToCart: onAddToCart),
        FoodItem(name: 'Burger', price: 5.99, onAddToCart: onAddToCart),
        FoodItem(name: 'Pasta', price: 8.99, onAddToCart: onAddToCart),
        FoodItem(name: 'Salad', price: 7.99, onAddToCart: onAddToCart),
        FoodItem(name: 'Soup', price: 6.99, onAddToCart: onAddToCart),
        FoodItem(name: 'Drink', price: 2.99, onAddToCart: onAddToCart),
      ],
    );
  }
}

class FoodItem extends StatelessWidget {
  final String name;
  final double price;
  final Function(FoodItem) onAddToCart;

  const FoodItem({
    required this.name,
    required this.price,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(name),
        subtitle: Text('\$$price'),
        trailing: ElevatedButton(
          onPressed: () {
            onAddToCart(this);
          },
          child: Text('Add to Cart'),
        ),
      ),
    );
  }
}

class CartScreen extends StatelessWidget {
  final List<FoodItem> cartItems;
  final VoidCallback onClearCart;

  CartScreen(this.cartItems, this.onClearCart);

  double getTotalAmount() {
    double totalAmount = 0.0;
    for (FoodItem item in cartItems) {
      totalAmount += item.price;
    }
    return totalAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Shopping Cart',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index].name),
                  subtitle: Text('\$${cartItems[index].price}'),
                );
              },
            ),
          ),
          Text(
            'Total: \$${getTotalAmount()}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              onClearCart();
              Navigator.pop(context);
            },
            child: Text('Clear Cart'),
          ),
        ],
      ),
    );
  }
}
