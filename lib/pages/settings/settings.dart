import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mon_app/routing/app_routes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go(AppRoutes.home);
          },
          icon: Icon(Icons.keyboard_return),
        ),
      ),
      body: Center(child: Text("Parametre")),
    );
  }
}
