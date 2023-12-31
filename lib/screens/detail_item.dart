import 'package:cinephilia/models/product.dart';
import 'package:flutter/material.dart';

class DetailItemPage extends StatelessWidget {
  final Product item;

  DetailItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${item.fields.name}',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo[900],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              item.fields.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Text("Harga : ${item.fields.price}"),
            const SizedBox(height: 10),
            Text("Description : ${item.fields.description}"),
          ],
        ),
      ),
    );
  }
}