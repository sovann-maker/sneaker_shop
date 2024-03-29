import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class MyCartPage extends StatefulWidget {
  final List<Shoe> userCart;
  final Function(Shoe) removeFromCartCallback;
  const MyCartPage({
    super.key,
    required this.userCart,
    required this.removeFromCartCallback,
  });

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  void removeFromCartCallback(Shoe shoe) {
    widget.removeFromCartCallback(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'My Cart',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: ListView.builder(
              itemCount: userCart.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15.0), // Adjust the radius as needed
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      userCart[index].imagePath,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      userCart[index].name,
                      style: const TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      userCart[index].price,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          removeFromCartCallback(userCart[index]);
                        });
                      },
                      icon: const Icon(Icons.delete),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
