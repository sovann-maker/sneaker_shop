import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class ShoeTile extends StatefulWidget {
  final Shoe shoe;
  final Function(Shoe) addToCartCallback;
  // final Function(Shoe) removeFromCartCallback;
  const ShoeTile({
    super.key,
    required this.shoe,
    required this.addToCartCallback,
    // required this.removeFromCartCallback,
  });

  @override
  State<ShoeTile> createState() => _ShoeTileState();
}

class _ShoeTileState extends State<ShoeTile> {
  List<Shoe> shoeLists = [];
  List<Shoe> userCart = [];

  void addToCartCallback(Shoe shoe) {
    widget.addToCartCallback(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      margin: const EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // const SizedBox(height: 20),
            Image.asset(
              widget.shoe.imagePath,
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            //description
            Text(
              maxLines: 5,
              softWrap: true,
              widget.shoe.description,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    //name and price
                    Text(
                      widget.shoe.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      'Starting from ${widget.shoe.price}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                  onPressed: () {
                    addToCartCallback(widget.shoe);
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          title: Text(
                            'Successfully added!',
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0))),
                        );
                      },
                    );
                  },
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
