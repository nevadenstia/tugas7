import 'package:flutter/material.dart';
import 'package:tugas7/widgets/shop_card.dart';

class ProductListPage extends StatelessWidget {
  final List<ShopProducts> productList;

  const ProductListPage({Key? key, required this.productList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(productList[index].name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Harga: \$${productList[index].price}'),
                Text('Deskripsi: ${productList[index].description}'),
                Text('Jumlah: ${productList[index].amount}'),
                Text('Rating: ${productList[index].ratings}'),
                Text('Ulasan: ${productList[index].reviews}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
