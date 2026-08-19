import 'package:flutter/material.dart';
import 'home/home.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp Flutter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MyApp",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyLogin()),
              );
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: MyHome(),
      bottomNavigationBar: MyBottomBr(),
    );
  }
}

class MyBottomBr extends StatefulWidget {
  const MyBottomBr({super.key});

  @override
  State<MyBottomBr> createState() => _MyBottomBrState();
}

class _MyBottomBrState extends State<MyBottomBr> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.lightBlue,
      unselectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Aceuil'),
        BottomNavigationBarItem(
          icon: Icon(Icons.production_quantity_limits),
          label: 'Produits',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt_long),
          label: 'Aceuil',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
      ],
    );
  }
}
