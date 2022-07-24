import 'package:flutter/material.dart';
import './products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(
      'Laptop',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: Scaffold(
            appBar: AppBar(title: const Text('MackBook App')),
            drawer: const Drawer(),
            body: Column(children: [
              Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  width: 175,
                  height: 50,
                  margin: const EdgeInsets.all(10.0),
                  child: InkWell(
                      splashColor: Colors.blueGrey,
                      onTap: () {
                        setState(() {
                          _products.add('Laptop');
                        });
                      },
                      child: const Center(
                        child: Text(
                          'Add Laptops',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ))),
              Expanded(child: Products(_products))
            ])));
  }
}
