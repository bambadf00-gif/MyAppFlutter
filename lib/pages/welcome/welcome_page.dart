import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mon_app/routing/app_routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('img/arol.jpg', fit: BoxFit.cover),
          Positioned(
            left: 16,
            right: 16,
            bottom: 20,
            child: Card(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      "Salut, je suis Bamba, développeur Flutter. 👋",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width :double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          context.go(AppRoutes.login);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text(
                          "Suivant",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text("Créons quelque chose de grand."),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
