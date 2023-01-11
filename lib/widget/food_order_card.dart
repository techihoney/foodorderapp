import 'package:flutter/material.dart';

class FoodOrderCard extends StatelessWidget {
  const FoodOrderCard(
      {Key? key,
        required this.itemName,
        required this.itemPrice,
        required this.removeOnTap,
        required this.plusOnTap,
        required this.addOnTap,  required this.itemCount})
      : super(key: key);
  final String itemName;
  final int itemPrice;
  final int itemCount;
  final VoidCallback removeOnTap;
  final VoidCallback plusOnTap;
  final VoidCallback addOnTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                itemName,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '₹ $itemPrice',
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: removeOnTap,
                  icon: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Icon(Icons.remove),
                    ),
                  )),
              const SizedBox(
                width: 5,
              ),
              Text(
                itemCount.toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 5,
              ),
              IconButton(
                  onPressed: plusOnTap,
                  icon: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Icon(Icons.add),
                    ),
                  )),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.white),
            onPressed: addOnTap,
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
