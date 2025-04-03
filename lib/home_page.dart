import 'package:ecommerce_app/global_variables.dart';
import 'package:ecommerce_app/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = ['All', 'Nike', 'Adidas', 'Bata', 'Puma'];
  String selectedFilter = 'All';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(100),
        right: Radius.zero,
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Shoes\nCollection',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                      border: border,
                      enabledBorder: border,
                      focusedBorder: border,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedFilter = filter;
                        });
                      },
                      child: Chip(
                        backgroundColor: selectedFilter == filter
                            ? Theme.of(context).colorScheme.primary
                            : const Color.fromRGBO(255, 255,255, 1),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        label: Text(filter),
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                  itemBuilder: (context, index){
                  final product = products[index];
                  return ProductCard(
                    title: product['title'] as String,
                    company: product['company'].toString(),
                    price: product['price'] as double,
                    image: product['imageUrl'] as String ,
                    backgroundColor: index.isEven ? Color.fromRGBO(216, 240, 253, 1) : Color.fromRGBO(245,247,249,1),
                  );
              
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}