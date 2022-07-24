import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  // ignore: use_key_in_widget_constructors
  const Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage('assets/images/apple1.jpg'),
                height: 40,
              ),
              Text(
                'MackBook  Air',
                style: TextStyle(color: Colors.black, fontSize: 15),
              )
            ],
          ),
          Image.asset('assets/images/macbook1.jpg'),
          Text(products[index],
              style: const TextStyle(color: Colors.deepPurple, fontSize: 15))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}
