import 'package:cinephilia/screens/list_item.dart';
import 'package:flutter/material.dart';
import 'package:cinephilia/screens/shoplist_form.dart';

class ShopItem {
  final String name;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;

  ShopItem(this.name, this.icon, this.color, {this.onTap});
}

class Item {
  final String name;
  final int price;
  final String description;

  Item({
    required this.name,
    required this.price,
    required this.description,
  });
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        onTap: () {
          item.onTap?.call();
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          
          // Check if the button pressed is "Tambah Produk"
          if (item.name == "Tambah Item") {
            // Navigate to the ShopFormPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ShopFormPage()),
            );
          }
          // Check if the button pressed is "Tambah Produk"
          if (item.name == "Lihat Item") {
            // Navigate to the ShopFormPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ItemsPage()),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
