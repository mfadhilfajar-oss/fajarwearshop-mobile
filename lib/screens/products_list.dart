import 'package:flutter/material.dart';

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Products")),
      body: const Center(
        child: Text(
          "Halaman daftar semua produk",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
