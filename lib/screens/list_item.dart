import 'package:flutter/material.dart';
import 'package:cinephilia/widgets/left_drawer.dart';
import 'package:cinephilia/screens/shoplist_form.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({super.key});

  @override
  State<StatefulWidget> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          Color backgroundColor = const Color.fromARGB(255, 24, 125, 172);

          return Card(
            color: backgroundColor,
            margin: const EdgeInsets.all(10),
            elevation: 5,
            child: InkWell(
              onTap: () {}, // Add action for tap if needed
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Icon(Icons.shopping_cart, size: 50, color: Colors.indigo),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "Price: ${item.price} BP",
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  IconButton(
                    icon: const Icon(Icons.info_outline, color: Colors.indigo),
                    onPressed: () {
                  // Ketika click icon detail, akan memunculkan data lengkap item
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(item.name),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text("Price: ${item.price} BP"),
                              Text("Description: ${item.description}"),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Close'),
                            onPressed: () {
                              Navigator.of(context). pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ]),
          ));
        },
      ),
    );
  }
}
