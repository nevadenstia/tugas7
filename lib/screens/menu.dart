import 'package:flutter/material.dart';
import 'package:tugas7/screens/productlist_page.dart';
import 'package:tugas7/screens/shoplist_form.dart';
import 'package:tugas7/widgets/left_drawer.dart';
import 'package:tugas7/widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopProducts> productList = []; // Initialize your list here

  final List<ShopItem> items = [
    ShopItem(
        "Lihat Item", Icons.checklist, const Color.fromARGB(255, 144, 61, 196)),
    ShopItem("Tambah Item", Icons.add_shopping_cart,
        const Color.fromARGB(255, 130, 94, 221)),
    ShopItem("Logout", Icons.logout, const Color.fromARGB(255, 91, 40, 113)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shop Inventory',
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(
        productList: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Shop Inventory',
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

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text("You pressed the ${item.name} button!"),
            ));

          if (item.name.trim().toLowerCase() == "tambah item") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ShopFormPage(
                  productList: [],
                ),
              ),
            );
          }

          if (item.name.trim().toLowerCase() == "lihat item") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductListPage(
                  productList: [],
                ),
              ),
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
