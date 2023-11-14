import 'package:flutter/material.dart';
import 'package:cinephilia/widgets/left_drawer.dart';
import 'package:cinephilia/widgets/shop_card.dart';// Pastikan ini mengarah ke lokasi yang benar di proyek Anda


class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
    ShopItem("Lihat Item", Icons.checklist, const Color.fromARGB(195, 47, 115, 182)),
    ShopItem("Tambah Item", Icons.add_shopping_cart, const Color.fromARGB(184, 16, 88, 29)),
    ShopItem("Logout", Icons.logout, const Color.fromARGB(184, 154, 9, 82)),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 52, 96),
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Cinephilia',
            style: TextStyle(color: Colors.white), // Ini mengatur warna teks menjadi putih
          ),
        ),
      ),
      drawer: const LeftDrawer(), // Ini adalah bagian yang ditambahkan untuk mengimplementasikan drawer
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Cinephilia Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

