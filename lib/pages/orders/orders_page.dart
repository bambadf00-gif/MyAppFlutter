import 'package:flutter/material.dart';

class Order {
  final String profile;
  final String name;
  final String time;

  const Order({
    required this.profile,
    required this.name,
    required this.time,
  });
}

class OrdersPage extends StatelessWidget {
  OrdersPage({super.key});

  final List<Order> orders = List.generate(
    12,
    (_) => const Order(
      profile:
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
      name: "Bamba Diouf",
      time: "19/09/26",
    ),
  );

  @override
  Widget build(BuildContext context) {
    if (orders.isEmpty) {
      return const Center(child: Text("Aucune commande pour le moment"));
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      itemCount: orders.length,
      itemBuilder: (context, index) => _OrderCard(order: orders[index]),
    );
  }
}

// Widget privé (préfixe _) car utilisé seulement dans ce fichier
class _OrderCard extends StatelessWidget {
  final Order order;

  const _OrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 16,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  order.profile,
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 30,
                    width: 30,
                    color: Colors.grey.shade300,
                    child: const Icon(Icons.person, size: 18),
                  ),
                ),
              ),
              Text(order.name),
            ],
          ),
          Text(
            order.time,
            style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 8),
          ),
        ],
      ),
    );
  }
}