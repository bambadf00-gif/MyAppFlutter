import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [Carte(), DernierOrders()]),
    );
  }
}

class Carte extends StatelessWidget {
  const Carte({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("solde"), Text("20/09/20")],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    "1.000.090 F",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                      ),
                      child: Text(
                        "retrait",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DernierOrders extends StatelessWidget {
  DernierOrders({super.key});
  final List orders = [
    {
      "imgProduct": "https://picsum.photos/200?random=2",
      "name": "modou",
      "price": 12000,
      "icon": Icons.monetization_on,
    },
    {
      "imgProduct": "https://picsum.photos/200?random=2",
      "name": "modou",
      "price": 12000,
      "icon": Icons.monetization_on,
    },
    {
      "imgProduct": "https://picsum.photos/200?random=2",
      "name": "modou",
      "price": 12000,
      "icon": Icons.monetization_on,
    },
    {
      "imgProduct": "https://picsum.photos/200?random=2",
      "name": "modou",
      "price": 12000,
      "icon": Icons.monetization_on,
    },
    {
      "imgProduct": "https://picsum.photos/200?random=2",
      "name": "modou",
      "price": 12000,
      "icon": Icons.monetization_on,
    },
    {
      "imgProduct": "https://picsum.photos/200?random=2",
      "name": "modou",
      "price": 12000,
      "icon": Icons.monetization_on,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          for (var i in orders)
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: BoxBorder.all(color: Colors.black , width: 2),
                borderRadius: BorderRadius.circular(16)
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(i["imgProduct"]),
                ),
                title: Text(i["name"]),
                subtitle: Text('${i["price"]} fcfa'),
                trailing: Icon(i["icon"]),
              ),
            ),
        ],
      ),
    );
  }
}
