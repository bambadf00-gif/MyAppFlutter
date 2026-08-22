import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: SingleChildScrollView(
        child: Column(children: [CarteSection(), FiltreSecion(), SectionCrt()]),
      ),
    );
  }
}

class CarteSection extends StatelessWidget {
  const CarteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(16),
      child: Container(
        padding: EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: const Color.fromARGB(148, 33, 149, 243),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.attach_money_rounded,
                  color: Colors.white,
                  size: 64,
                ),
                const Text(
                  "156.000.890",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text(
                      "5",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text("livre"),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "45",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text("Non livre"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FiltreSecion extends StatelessWidget {
  FiltreSecion({super.key});
  final List filtre = [
    "Tous",
    "livrez",
    "Non livrez",
    "Vue",
    "Non Vue",
    "Client",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsetsGeometry.all(8),
          child: Row(
            children: [
              for (var i in filtre)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blueGrey,
                    ),
                    child: Text(i, style: TextStyle()),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionCrt extends StatelessWidget {
  SectionCrt({super.key});
  final List cart = [
    {
      "icon1": Icons.telegram,
      "icon2": Icons.wifi,
      "txt": "Commande",
      "txt2": "il y a 4m",
      "status": "on",
      "iconStatus": Icons.toggle_off_outlined,
    },
    {
      "icon1": Icons.telegram,
      "icon2": Icons.wifi,
      "txt": "Commande",
      "txt2": "il y a 4m",
      "status": "on",
      "iconStatus": Icons.toggle_on_outlined,
    },
    {
      "icon1": Icons.telegram,
      "icon2": Icons.wifi,
      "txt": "Commande",
      "txt2": "il y a 4m",
      "status": "on",
      "iconStatus": Icons.toggle_off_outlined,
    },
    {
      "icon1": Icons.telegram,
      "icon2": Icons.wifi,
      "txt": "Commande",
      "txt2": "il y a 4m",
      "status": "on",
      "iconStatus": Icons.toggle_on_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 1.0,
      padding: const EdgeInsets.all(12),
      children: [
        for (var i in cart)
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(51, 33, 149, 243),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(i["icon1"], color: Colors.blue, size: 20),
                    ),
                    Icon(i["icon2"], color: Colors.grey, size: 18),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  i["txt"],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  i["txt2"],
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    i["iconStatus"],
                    color: i["iconStatus"] == Icons.toggle_on_outlined
                        ? Colors.blue
                        : Colors.grey,
                    size: 26,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
